use utf8;
package Jefit::Custom::Result::TrainingSession;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Custom::Result::TrainingSession

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<trainingSession>

=cut

__PACKAGE__->table("trainingSession");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 date_time

  data_type: 'datetime'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "date_time",
  { data_type => "datetime", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 training_logs

Type: has_many

Related object: L<Jefit::Custom::Result::TrainingLog>

=cut

__PACKAGE__->has_many(
  "training_logs",
  "Jefit::Custom::Result::TrainingLog",
  { "foreign.session_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GssR5T6T/tu/66R1A+0tTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
