use utf8;
package Jefit::Classic::Result::Setting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Classic::Result::Setting

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<setting>

=cut

__PACKAGE__->table("setting");

=head1 ACCESSORS

=head2 legal_note

  data_type: 'text'
  is_nullable: 1

=head2 gender

  data_type: 'varchar'
  is_nullable: 1

=head2 currentroutine

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 phone_sync_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 server_sync_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 dob

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 length

  data_type: 'varchar'
  is_nullable: 1

=head2 mass

  data_type: 'varchar'
  is_nullable: 1

=head2 dbversion

  data_type: 'varchar'
  is_nullable: 1

=head2 vibration

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 alarm

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 sets

  data_type: 'int'
  default_value: 3
  is_nullable: 1
  size: 2

=head2 timer

  data_type: 'int'
  default_value: 60
  is_nullable: 1

=head2 targetrep

  data_type: 'int'
  default_value: 8
  is_nullable: 1
  size: 3

=cut

__PACKAGE__->add_columns(
  "legal_note",
  { data_type => "text", is_nullable => 1 },
  "gender",
  { data_type => "varchar", is_nullable => 1 },
  "currentroutine",
  { data_type => "int", is_nullable => 1, size => 10 },
  "phone_sync_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "server_sync_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "dob",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "length",
  { data_type => "varchar", is_nullable => 1 },
  "mass",
  { data_type => "varchar", is_nullable => 1 },
  "dbversion",
  { data_type => "varchar", is_nullable => 1 },
  "vibration",
  { data_type => "int", is_nullable => 1, size => 1 },
  "alarm",
  { data_type => "int", is_nullable => 1, size => 1 },
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "sets",
  { data_type => "int", default_value => 3, is_nullable => 1, size => 2 },
  "timer",
  { data_type => "int", default_value => 60, is_nullable => 1 },
  "targetrep",
  { data_type => "int", default_value => 8, is_nullable => 1, size => 3 },
);

=head1 PRIMARY KEY

=over 4

=item * L</_id>

=back

=cut

__PACKAGE__->set_primary_key("_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 11:18:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HZwqB7uvcMd21Ji1oDxrlw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
