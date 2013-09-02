use utf8;
package Jefit::Classic::Result::WorkOut;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Classic::Result::WorkOut

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<workOut>

=cut

__PACKAGE__->table("workOut");

=head1 ACCESSORS

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 package

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 day

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 dayindex

  data_type: 'int'
  is_nullable: 1
  size: 3

=cut

__PACKAGE__->add_columns(
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "package",
  { data_type => "int", is_nullable => 1, size => 10 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "day",
  { data_type => "int", is_nullable => 1, size => 1 },
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "dayindex",
  { data_type => "int", is_nullable => 1, size => 3 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 11:18:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ci9oDmgLl2atJ8A7xjC5wA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
