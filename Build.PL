use strict;
use Module::Build;

Module::Build->new(
    module_name => "Module::Depends",
    license     => 'perl',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Parse::CPAN::Meta' => 0,
        'File::Spec'        => 0,
        'Class::Accessor::Chained' => 0,
    },
    meta_merge => {
        resources => {
            repository => 'http://github.com/richardc/perl-module-depends',
        },
    },
    create_makefile_pl => 'traditional',
   )
  ->create_build_script;
