use utf8;
package Jefit::Classic::Result::Note;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Classic::Result::Note

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<notes>

=cut

__PACKAGE__->table("notes");

=head1 ACCESSORS

=head2 mydate

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 mynote

  data_type: 'text'
  is_nullable: 1

=head2 eid

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 belongsys

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "mydate",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "mynote",
  { data_type => "text", is_nullable => 1 },
  "eid",
  { data_type => "int", is_nullable => 1, size => 10 },
  "belongsys",
  { data_type => "int", is_nullable => 1, size => 1 },
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 11:18:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MEOboJJP6z83eW+dQlDnyA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
