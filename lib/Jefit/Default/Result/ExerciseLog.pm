use utf8;
package Jefit::Default::Result::ExerciseLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::ExerciseLog

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<exerciseLogs>

=cut

__PACKAGE__->table("exerciseLogs");

=head1 ACCESSORS

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 belongsys

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 mydate

  data_type: 'date'
  is_nullable: 1

=head2 eid

  data_type: 'integer'
  is_nullable: 1
  size: 10

=head2 ename

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 logs

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 record

  data_type: 'real'
  is_nullable: 1

=head2 day_item_id

  data_type: 'int'
  default_value: 0
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "belongsys",
  { data_type => "int", is_nullable => 1, size => 1 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "mydate",
  { data_type => "date", is_nullable => 1 },
  "eid",
  { data_type => "integer", is_nullable => 1, size => 10 },
  "ename",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "logs",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "record",
  { data_type => "real", is_nullable => 1 },
  "day_item_id",
  { data_type => "int", default_value => 0, is_nullable => 1, size => 10 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8BKh/IHBVwvYObCTuuS9QA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
