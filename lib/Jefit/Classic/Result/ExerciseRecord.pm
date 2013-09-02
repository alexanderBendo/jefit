use utf8;
package Jefit::Classic::Result::ExerciseRecord;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Classic::Result::ExerciseRecord

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<exerciseRecord>

=cut

__PACKAGE__->table("exerciseRecord");

=head1 ACCESSORS

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 belongsys

  data_type: 'int'
  is_nullable: 1

=head2 record

  data_type: 'real'
  is_nullable: 1

=head2 eid

  data_type: 'int'
  is_nullable: 1

=head2 target1rm

  data_type: 'real'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "belongsys",
  { data_type => "int", is_nullable => 1 },
  "record",
  { data_type => "real", is_nullable => 1 },
  "eid",
  { data_type => "int", is_nullable => 1 },
  "target1rm",
  { data_type => "real", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 11:18:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IfDfRzd59v5cG/43naROSw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
