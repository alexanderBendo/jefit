use utf8;
package Jefit::Default::Result::Deletetracking;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::Deletetracking

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<deletetracking>

=cut

__PACKAGE__->table("deletetracking");

=head1 ACCESSORS

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 tablename

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 removed_id

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 delete_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "tablename",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "removed_id",
  { data_type => "int", is_nullable => 1, size => 10 },
  "delete_time",
  { data_type => "int", is_nullable => 1, size => 10 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lxE3dizO+ixIICpTYHrX1w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
