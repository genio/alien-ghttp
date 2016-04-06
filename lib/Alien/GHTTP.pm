package Alien::GHTTP;

use strict;
use warnings;

our $VERSION = '0.003';
$VERSION = eval $VERSION;

use parent 'Alien::Base';

1;

=head1 NAME

Alien::GHTTP - Easy installation of the GNOME libghttp library

=head1 SYNOPSIS

  # Build.PL
  use Alien::GHTTP;
  use Module::Build 0.28; # need at least 0.28

  my $builder = Module::Build->new(
    configure_requires => {
      'Alien::GHTTP' => '0.001',
    },
    ...
    extra_compiler_flags => Alien::GHTTP->cflags,
    extra_linker_flags   => Alien::GHTTP->libs,
    ...
  );

  $builder->create_build_script;


  # lib/MyLibrary/GHTTP.pm
  package MyLibrary::GHTTP;

  use Alien::GHTTP; # dynaload libghttp

  ...

=head1 DESCRIPTION

Provides the GNOME libghttp
L<http://ftp.gnome.org/pub/gnome/sources/libghttp> (GHTTP) for use by Perl modules, installing it if necessary.
This module relies heavily on the L<Alien::Base> system to do so.

=head1 SEE ALSO

=over

=item *

L<Alien::Base>

=back

=head1 SOURCE REPOSITORY

L<https://github.com/genio/alien-ghttp>

=head1 AUTHOR

Chase Whitener, E<lt>capoeirab@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2016 by Chase Whitener

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
