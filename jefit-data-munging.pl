#!perl

use strict;
use warnings;
use lib './lib';
use Jefit::Classic;
use Jefit::Custom;
use Jefit::Default;
use feature qw(say);

my $classic_schema = Jefit::Classic->connect('dbi:SQLite:jefit.sqlite');
my $custom_schema = Jefit::Custom->connect('dbi:SQLite:myjefit.sqlite');
my $default_schema = Jefit::Default->connect('dbi:SQLite:data.jet');

#-----------------------------------------------------------------------------
# .: Main :.
#-----------------------------------------------------------------------------

MAIN:

$ENV{DBIC_TRACE_PROFILE} = 'console';

$custom_schema->storage->debug(1);

my $stats = $custom_schema->resultset('TrainingSession')->search(
    {},
    { columns => [ 
            { session_date  => { strftime => ['"%Y"', 'date_time'] } },
            { session_count => { count => 'date_time' } } ],
      group_by => { strftime => ['"%Y"', 'date_time'] },
    },
);

#say $stats->single->get_column('session_count');

while (my $foo = $stats->next()) {
    printf "%s: %s\n", $foo->get_column('session_date'), $foo->get_column('session_count');
}

exit;

my $rs = $classic_schema->resultset('ExerciseLog');

while (my $session = $rs->next()) {

    foreach my $set (split /,/, $session->logs) {

        #printf "%s:%s:%s\n", $session->mydate, $session->ename, $set;

        my ($weight, $reps) = split /x/, $set;

        my $log = $custom_schema->resultset('TrainingLog')->create({
                session  => { date_time => $session->mydate },
                exercise => { name => $session->ename },
                weight      => $weight,
                reps        => $reps,
            });

        if (not $log) { 
            warn "Something went wrong with " .
                             $session->mydate . ", " .
                             $session->ename . ", ".
                             $set;
         }
    }

}

# select date_time, name, weight, reps from trainingLog,exercise,trainingSession where trainingLog.exercise_id = exercise.id and trainingLog.session_id=trainingSession.id;

#add_default_exercises();
#add_custom_exercises();

#-----------------------------------------------------------------------------
# .: Subs :.
#-----------------------------------------------------------------------------

sub add_default_exercises {
    add_exercises($default_schema, 'SysExercise')
}


sub add_custom_exercises {
    add_exercises($classic_schema, 'Exercise')
}


sub add_exercises {
    my ($schema, $table) = @_;

    my $rs = $schema->resultset($table);

    while (my $ex = $rs->next()) {
        my $new_ex = $custom_schema->resultset('Exercise')->create({
                name => $ex->name,
            });
    }
}
