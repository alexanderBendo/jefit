use utf8;
package Jefit::Classic::Result::AndroidMetadata;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Jefit::Classic::Result::AndroidMetadata

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<android_metadata>

=cut

__PACKAGE__->table("android_metadata");

=head1 ACCESSORS

=head2 locale

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns("locale", { data_type => "text", is_nullable => 1 });


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-08-26 11:18:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9t6iLH8Pao8xu9XRCm92Rg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
