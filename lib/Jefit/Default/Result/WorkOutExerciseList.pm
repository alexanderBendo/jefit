use utf8;
package Jefit::Default::Result::WorkOutExerciseList;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::WorkOutExerciseList

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<workOutExerciseList>

=cut

__PACKAGE__->table("workOutExerciseList");

=head1 ACCESSORS

=head2 mysort

  data_type: 'int'
  default_value: 0
  is_nullable: 1
  size: 3

=head2 belongsys

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 superset

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 exercise_id

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 belongplan

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 exercisename

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 setcount

  data_type: 'int'
  is_nullable: 1
  size: 3

=head2 timer

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 logs

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 bodypart

  data_type: 'int'
  is_nullable: 1
  size: 2

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 targetrep

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 setdone

  data_type: 'int'
  default_value: 0
  is_nullable: 1
  size: 3

=head2 setdonetime

  data_type: 'int'
  default_value: 0
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "mysort",
  { data_type => "int", default_value => 0, is_nullable => 1, size => 3 },
  "belongsys",
  { data_type => "int", is_nullable => 1, size => 1 },
  "superset",
  { data_type => "int", is_nullable => 1, size => 10 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "exercise_id",
  { data_type => "int", is_nullable => 1, size => 10 },
  "belongplan",
  { data_type => "int", is_nullable => 1, size => 1 },
  "exercisename",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "setcount",
  { data_type => "int", is_nullable => 1, size => 3 },
  "timer",
  { data_type => "int", is_nullable => 1, size => 10 },
  "logs",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "bodypart",
  { data_type => "int", is_nullable => 1, size => 2 },
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "targetrep",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "setdone",
  { data_type => "int", default_value => 0, is_nullable => 1, size => 3 },
  "setdonetime",
  { data_type => "int", default_value => 0, is_nullable => 1, size => 10 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EJvpohPzDWHAPcNZGoKlyA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
