use utf8;
package Jefit::Custom::Result::TrainingLog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Custom::Result::TrainingLog

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<trainingLog>

=cut

__PACKAGE__->table("trainingLog");

=head1 ACCESSORS

=head2 session_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 exercise_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 weight

  data_type: 'integer'
  is_nullable: 0

=head2 reps

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "session_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "exercise_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "weight",
  { data_type => "integer", is_nullable => 0 },
  "reps",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 exercise

Type: belongs_to

Related object: L<Jefit::Custom::Result::Exercise>

=cut

__PACKAGE__->belongs_to(
  "exercise",
  "Jefit::Custom::Result::Exercise",
  { id => "exercise_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 session

Type: belongs_to

Related object: L<Jefit::Custom::Result::TrainingSession>

=cut

__PACKAGE__->belongs_to(
  "session",
  "Jefit::Custom::Result::TrainingSession",
  { id => "session_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+7K4mq1LGSI18CO9ePM41g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
