#!perl

use strict;
use warnings;
use lib './lib';
use Jefit::Classic;
use Jefit::Custom;
use Jefit::Default;
use feature qw(say);

my $classic_schema = Jefit::Classic->connect('dbi:SQLite:jefit.sqlite');
my $custom_schema  = Jefit::Custom->connect('dbi:SQLite:myjefit.sqlite');
my $default_schema = Jefit::Default->connect('dbi:SQLite:data.jet');

# debug options
# $ENV{DBIC_TRACE_PROFILE} = 'console';
# $custom_schema->storage->debug(1);

#-----------------------------------------------------------------------------
# .: Main :.
#-----------------------------------------------------------------------------

MAIN:

my $rs = $classic_schema->resultset('ExerciseLog');

while ( my $session = $rs->next() ) {

    foreach my $set ( split /,/, $session->logs ) {

        #printf "%s:%s:%s\n", $session->mydate, $session->ename, $set;

        my ( $weight, $reps ) = split /x/, $set;

        my $log = $custom_schema->resultset('TrainingLog')->create(
            {   session  => { date_time => $session->mydate },
                exercise => { name      => $session->ename },
                weight   => $weight,
                reps     => $reps,
            }
        );

    }

}

#
# Sample training stat: nº of training sessions per year
#

my $stats = $custom_schema->resultset('TrainingSession')->search(
    {},
    {   columns => [
            { session_date  => { strftime => [ '"%Y"', 'date_time' ] } },
            { session_count => { count    => 'date_time' } }
        ],
        group_by => { strftime => [ '"%Y"', 'date_time' ] },
    },
);

while ( my $stat = $stats->next() ) {
    printf "%s: %s\n", $stat->get_column('session_date'),
        $stat->get_column('session_count');
}
