use utf8;
package Jefit::Default::Result::Exercise;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::Exercise

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<exercise>

=cut

__PACKAGE__->table("exercise");

=head1 ACCESSORS

=head2 rating

  data_type: 'real'
  is_nullable: 1

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 image2

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 image1

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 bodypart3

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 bodypart2

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

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

=head2 equip1

  data_type: 'integer'
  default_value: 0
  is_nullable: 1
  size: 2

=head2 equip2

  data_type: 'integer'
  default_value: 0
  is_nullable: 1
  size: 2

=head2 recordtype

  data_type: 'int'
  default_value: 0
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "rating",
  { data_type => "real", is_nullable => 1 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "image2",
  { data_type => "int", is_nullable => 1, size => 1 },
  "image1",
  { data_type => "int", is_nullable => 1, size => 1 },
  "bodypart3",
  { data_type => "int", is_nullable => 1, size => 1 },
  "bodypart2",
  { data_type => "int", is_nullable => 1, size => 1 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "bodypart",
  { data_type => "int", is_nullable => 1, size => 2 },
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "equip1",
  { data_type => "integer", default_value => 0, is_nullable => 1, size => 2 },
  "equip2",
  { data_type => "integer", default_value => 0, is_nullable => 1, size => 2 },
  "recordtype",
  { data_type => "int", default_value => 0, is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0juFCKnFDxkA0HFFKl1krg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
