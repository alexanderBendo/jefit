library(DBI)
library(RSQLite)
library(ggplot2)
library(scales) # for alpha colors
library(grid) # for viewports


#Edit these for the workouts you wish to display
exercise1 <- 'Barbell Deadlift'
exercise2 <- 'Smith Machine Squat'
exercise3 <- 'Smith Machine Bench Press'

pdf("jefit-data-analysis.pdf")

#-----------------------------------------------------------------------------
# .: Load data :.
#-----------------------------------------------------------------------------

# This is inefficient, you should allocate the exact number of rows needed
# for your dataset. However that it is impossible here because there is an
# unknown number of sets per table row.
# A possible is solution is to allocate more rows than needed and then remove
# the empty ones.
# As measured with system.time() the penalty for a dynamically growing data
# set is around 50% with 6313 unique sets (from 4.8 seconds to 6.4 seconds)
# See http://stackoverflow.com/questions/3642535/creating-an-r-dataframe-row-by-row

trainingData <- data.frame(date=NA, exercise=NA, weight=NA, reps=NA )


con <- dbConnect(RSQLite::SQLite(), dbname = "jefit.bak.dec")

df <- dbReadTable(con, "exerciseLogs")

# data frame row counter
row <- 1

for (i in 1:nrow(df)) {
    log <- df[i,]
    #print(log[7])
    for (sets in strsplit(as.character(log[7]), ",")) {
        for (set in sets) {
            weight_reps <- unlist(strsplit(set,"x"))
            trainingData[row,] <- c(log[4], log[6], c(weight_reps))
            row <- row + 1
        }
    }
}

# Convert reps and weight to "numeric" types
trainingData[,3:4] <- lapply(trainingData[,3:4], as.numeric)

# Add the volume column
trainingData$volume <- trainingData$weight * trainingData$reps

# Add day, month and year columns for convenience
trainingData$year  <- substr(trainingData$date,1,4)
trainingData$month <- substr(trainingData$date,6,7)
trainingData$day   <- substr(trainingData$date,9,10)
trainingData$date <- as.Date(trainingData$date, "%Y-%m-%d")


#-----------------------------------------------------------------------------
# .: Training volume per month, comparing each year :.
#-----------------------------------------------------------------------------

df <- aggregate(trainingData$volume, FUN=sum, by=list(trainingData$year, trainingData$month))
colnames(df) <- c("year", "month", "volume")
volumePerMonth <- ggplot(df, aes(x=month, y=volume, group=year, color=year))+
    geom_line()+
    labs(title = "Training Volume Per Month")+ 
    scale_y_continuous(labels = comma) +
theme(legend.position="bottom", legend.direction="horizontal")

#-----------------------------------------------------------------------------
# .: Training volume per session :.
#-----------------------------------------------------------------------------

df <-aggregate(trainingData$volume, FUN=sum, by=list(trainingData$date))
colnames(df) <- c("month", "volume")

names <- c("2014", "2015")
starts <- c("2014-01-01", "2015-01-01")
ends <- c("2014-12-31", "2015-12-31")
years <- data.frame(names, as.Date(starts,"%Y-%m-%d"), as.Date(ends, "%Y-%m-%d"))
colnames(years) <- c("name", "start", "end")

xrng <- range(df$month)
yrng <- range(df$volume)

volumePerSession <- ggplot(df,aes(x=month,y=volume))+
    geom_line()+
    geom_rect(aes(NULL,NULL, xmin=start, xmax=end, fill=name), ymin=yrng[1], ymax=yrng[2],data=years)+
    scale_fill_manual(values=alpha(c("blue","red","green"),0.2))+
    labs(title = "Training Volume Per Session")


#-----------------------------------------------------------------------------
# .: Training volume per year :.
#-----------------------------------------------------------------------------

df <- aggregate(trainingData$volume, FUN=sum, by=list(trainingData$year))
colnames(df) <- c("year", "volume")
volumePerYear <- ggplot(df, aes(x=year, y=volume))+
    geom_bar(fill="#0086C9",stat="identity")+
    scale_x_discrete("Year")+
    labs(title = "Training Volume Per Year")+ 
    scale_y_continuous(labels = comma)


#-----------------------------------------------------------------------------
# .: Last three charts in the same page :.
#-----------------------------------------------------------------------------
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 2)))
vplayout <- function(x, y) viewport(layout.pos.row = x, layout.pos.col = y)
print(volumePerSession, vp = vplayout(1, 1:2))
print(volumePerMonth, vp = vplayout(2, 1))
print(volumePerYear, vp = vplayout(2, 2))


#-----------------------------------------------------------------------------
# .: Training volume per week :.
#-----------------------------------------------------------------------------

fmt <- function(x) {
    weeks <- function(x) as.numeric(x + 4) %/% 7 + 1
    sprintf("%s%05d", format(x, "%Y/%m/Week"), weeks(x) - weeks(x[1]) + 1)
}

df <- aggregate(trainingData$volume, list(Date = fmt(trainingData$date)), sum)
colnames(df) <- c("week", "volume")
volumePerWeek <- ggplot(df, aes(x=week,y=volume,group=1))+
    geom_point()+
    labs(title="Training Volume Per Week")+
    geom_smooth(method=lm)+
    theme(axis.text.x=element_blank())


#-----------------------------------------------------------------------------
# .: Training volume per week, last N weeks :.
#-----------------------------------------------------------------------------

N <- 16
df <- aggregate(trainingData$volume, list(fmt(trainingData$date)), sum)
df <- df[(nrow(df)-N):nrow(df),]
colnames(df) <- c("week", "volume")
volumeLastWeeks <- ggplot(df, aes(x=week,y=volume))+
    geom_bar(fill="#0086C9",stat="identity")+
    geom_hline(aes(yintercept=mean(volume),color="mean"),show_guide=TRUE)+
    scale_colour_hue("")+
    labs(title=paste("Training Volume Per Week (last", N, "weeks)",sep=" "))+
    theme(axis.text.x=element_blank(), legend.position="bottom", legend.direction="horizontal")


#-----------------------------------------------------------------------------
# .: Last two graphs :.
#-----------------------------------------------------------------------------
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 1)))
vplayout <- function(x, y) viewport(layout.pos.row = x, layout.pos.col = y)
print(volumePerWeek, vp = vplayout(1, 1))
print(volumeLastWeeks, vp = vplayout(2, 1))


#-----------------------------------------------------------------------------
# .: Training volume per session, last N sessions :.
#-----------------------------------------------------------------------------
N <- 32
df <- aggregate(trainingData$volume, list(trainingData$date), sum)
df <- df[(nrow(df)-N):nrow(df),]
colnames(df) <- c("date", "volume")
ggplot(df, aes(x=date,y=volume))+
    geom_line(fill="#0086C9")+
    geom_hline(aes(yintercept=mean(volume),color="mean"),show_guide=TRUE)+
    scale_colour_hue("")+
    labs(title=paste("Training Volume Per Session (last", N, "sessions)",sep=" "))+
    theme(axis.text.x=element_blank() ,legend.position="bottom", legend.direction="horizontal")


#-----------------------------------------------------------------------------
# .: Monthly Volume for Benchmark Exercises :.
#-----------------------------------------------------------------------------
df <- subset(trainingData, subset = exercise == exercise1 |exercise ==
            exercise2 | exercise == exercise3,
            select = c("year", "month", "exercise", "volume"))
dfVolumePerExercise <- aggregate(df$volume, by=list(df$year,df$month,df$exercise), FUN=sum)
colnames(dfVolumePerExercise) <- c("year", "month", "exercise", "volume")
ggplot(dfVolumePerExercise, aes(x=month, y=volume, group=exercise, color=exercise))+
    geom_line()+
    facet_grid(exercise ~ year)+
    guides(colour=FALSE)+
    labs(title="Monthly Training Volume Per Exercise")


#-----------------------------------------------------------------------------
# .: Personal Rercords 1RM - 5RM :.
#-----------------------------------------------------------------------------

personalRecords <- subset(trainingData, subset =
            (exercise == exercise1 |
            exercise == exercise2 |
            exercise == exercise3)
    &
    ( reps >= 1 & reps <= 8 )
)

df <- aggregate(personalRecords$weight, FUN=max, by=list(personalRecords$exercise, personalRecords$reps))
colnames(df) <- c("exercise", "reps", "weight")

ggplot(df, aes(x=df$exercise, y=df$weight, fill=factor(reps)))+
    geom_bar(stat="identity", position="dodge")+
    scale_x_discrete("Exercise")+
    scale_y_continuous("Kilograms")+
    scale_fill_hue(name="RM")+
    labs(title="Personal Records")+
    geom_text(aes(label=df$weight), position=position_dodge(width=1),vjust=-1)


#-----------------------------------------------------------------------------
# .: Personal Rercords Max reps per weight :.
#-----------------------------------------------------------------------------

personalRecords <- subset(trainingData, subset =
   (exercise == exercise1 |
            exercise == exercise2 |
            exercise == exercise3)
)

df <- aggregate(personalRecords$reps, FUN=max, by=list(personalRecords$exercise, personalRecords$weight))
colnames(df) <- c("exercise", "weight", "reps")

ggplot(df, aes(x=weight, y=reps, shape=exercise, color=exercise))+
    geom_point()+
    scale_x_continuous(breaks=seq(20,180,by=5))+
    scale_y_continuous(breaks=seq(1,20,by=1))+
    geom_smooth(method=lm, se=FALSE)+
    labs(title="Max reps per weight")+
    theme(legend.position="bottom", legend.direction="vertical")

#-----------------------------------------------------------------------------
# .: Exercise Histogram :.
#-----------------------------------------------------------------------------

dfCount <- aggregate(trainingData$exercise, FUN=length, by=list(trainingData$exercise))
colnames(dfCount) <- c("exercise", "count")
dfOrdered <- dfCount[order(-dfCount$count),]
dfTop20 <- dfOrdered[1:20,]
dfTop20$order <- factor(dfTop20$exercise, as.character(dfTop20$exercise))
ggplot(dfTop20,aes(x=order, y=count))+
    geom_bar(fill="#0086C9", stat="identity")+
    scale_x_discrete("Exercise")+
    scale_y_continuous("Count")+
    theme(axis.text.x=element_text(angle=67))+
    labs(title="Top 20 Most Frequent Exercises")


#-----------------------------------------------------------------------------
# .: Intensity histogram :.
#-----------------------------------------------------------------------------

#I dont have any experiece with ggplot so couldn't get this to work
#ggplot(trainingData, aes(x=reps))+
#    geom_histogram(aes(y=..count..),binwidth=2, fill="#0086C9")+
#    geom_density()+
#    scale_x_continuous("Nº of reps per set")+
#    labs(title="Training Intensity Distribution")

dev.off()
