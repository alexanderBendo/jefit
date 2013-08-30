library(DBI)
library(RSQLite)

con <- dbConnect("SQLite", "jefit.sqlite")

df <- dbReadTable(con, "exerciseLogs")

# This is inefficient, you should allocate the exact number of rows needed
# for your dataset. However that it is impossible here because there is an
# unknown number of sets per table row.
# A possible is solution is to allocate more rows than needed and then remove
# the empty ones.
# As measured with system.time() the penalty for a dynamically growing data
# set is around 50% with 6313 unique sets (from 4.8 seconds to 6.4 seconds)
# See http://stackoverflow.com/questions/3642535/creating-an-r-dataframe-row-by-row

trainingData <- data.frame(date=NA, exercise=NA, weight=NA, reps=NA )

# data frame row counter
row <- 1

# MAIN

for (i in 1:nrow(df)) {
    log <- df[i,]
    for (sets in strsplit(log[6]$logs, ",")) {
        for (set in sets) {
            weight_reps <- unlist(strsplit(set,"x"))
            trainingData[row,] <- c(log[3]$mydate, log[5]$ename, c(weight_reps))
            row <- row + 1
        }
    }
}

# Convert reps and weight to "numeric" types
trainingData[,3:4] <- lapply(trainingData[,3:4], as.numeric)
