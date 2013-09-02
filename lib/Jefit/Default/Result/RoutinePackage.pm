use utf8;
package Jefit::Default::Result::RoutinePackage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::RoutinePackage

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<routinePackage>

=cut

__PACKAGE__->table("routinePackage");

=head1 ACCESSORS

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 difficulty

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 focus

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 dayaweek

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 daytype

  data_type: 'int'
  default_value: 0
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "difficulty",
  { data_type => "int", is_nullable => 1, size => 1 },
  "focus",
  { data_type => "int", is_nullable => 1, size => 1 },
  "dayaweek",
  { data_type => "int", is_nullable => 1, size => 1 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "daytype",
  { data_type => "int", default_value => 0, is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RO21PISAhRZW3YPtJMrMLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
