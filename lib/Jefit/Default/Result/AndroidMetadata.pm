use utf8;
package Jefit::Default::Result::AndroidMetadata;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Default::Result::AndroidMetadata

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<android_metadata>

=cut

__PACKAGE__->table("android_metadata");

=head1 ACCESSORS

=head2 locale

  data_type: (empty string)
  is_nullable: 1

=cut

__PACKAGE__->add_columns("locale", { data_type => "", is_nullable => 1 });


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 10:03:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6qzdLzSiij0sXau+U2IKFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
