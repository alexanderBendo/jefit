use utf8;
package Jefit::Default::Result::CardioLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::CardioLog

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<cardioLogs>

=cut

__PACKAGE__->table("cardioLogs");

=head1 ACCESSORS

=head2 lap

  data_type: 'real'
  is_nullable: 1

=head2 duration

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 speed

  data_type: 'real'
  is_nullable: 1

=head2 distance

  data_type: 'real'
  is_nullable: 1

=head2 calorie

  data_type: 'real'
  is_nullable: 1

=head2 edit_time

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 belongsys

  data_type: 'int'
  is_nullable: 1
  size: 1

=head2 mydate

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 eid

  data_type: 'int'
  is_nullable: 1
  size: 10

=head2 _id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "lap",
  { data_type => "real", is_nullable => 1 },
  "duration",
  { data_type => "int", is_nullable => 1, size => 10 },
  "speed",
  { data_type => "real", is_nullable => 1 },
  "distance",
  { data_type => "real", is_nullable => 1 },
  "calorie",
  { data_type => "real", is_nullable => 1 },
  "edit_time",
  { data_type => "int", is_nullable => 1, size => 10 },
  "belongsys",
  { data_type => "int", is_nullable => 1, size => 1 },
  "mydate",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "eid",
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

=head1 UNIQUE CONSTRAINTS

=head2 C<eid_mydate_belongsys_unique>

=over 4

=item * L</eid>

=item * L</mydate>

=item * L</belongsys>

=back

=cut

__PACKAGE__->add_unique_constraint("eid_mydate_belongsys_unique", ["eid", "mydate", "belongsys"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bxmGBHVbdJWfspeN1+6fug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
