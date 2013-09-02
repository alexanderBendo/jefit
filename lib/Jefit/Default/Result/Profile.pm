use utf8;
package Jefit::Default::Result::Profile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::Profile

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<profile>

=cut

__PACKAGE__->table("profile");

=head1 ACCESSORS

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 mydate

  data_type: 'date'
  is_nullable: 1

=head2 weight

  data_type: 'real'
  is_nullable: 1

=head2 fatpercent

  data_type: 'real'
  is_nullable: 1

=head2 chest

  data_type: 'real'
  is_nullable: 1

=head2 arms

  data_type: 'real'
  is_nullable: 1

=head2 waist

  data_type: 'real'
  is_nullable: 1

=head2 calves

  data_type: 'real'
  is_nullable: 1

=head2 height

  data_type: 'real'
  is_nullable: 1

=head2 hips

  data_type: 'real'
  is_nullable: 1

=head2 thighs

  data_type: 'real'
  is_nullable: 1

=head2 shoulders

  data_type: 'real'
  is_nullable: 1

=head2 neck

  data_type: 'real'
  is_nullable: 1

=head2 forearms

  data_type: 'real'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "mydate",
  { data_type => "date", is_nullable => 1 },
  "weight",
  { data_type => "real", is_nullable => 1 },
  "fatpercent",
  { data_type => "real", is_nullable => 1 },
  "chest",
  { data_type => "real", is_nullable => 1 },
  "arms",
  { data_type => "real", is_nullable => 1 },
  "waist",
  { data_type => "real", is_nullable => 1 },
  "calves",
  { data_type => "real", is_nullable => 1 },
  "height",
  { data_type => "real", is_nullable => 1 },
  "hips",
  { data_type => "real", is_nullable => 1 },
  "thighs",
  { data_type => "real", is_nullable => 1 },
  "shoulders",
  { data_type => "real", is_nullable => 1 },
  "neck",
  { data_type => "real", is_nullable => 1 },
  "forearms",
  { data_type => "real", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Gd2Eg/KvF+QGTB57sqbs8w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
