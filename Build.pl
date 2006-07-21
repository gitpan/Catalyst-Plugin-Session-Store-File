use strict;
use Module::Build;

my $build = Module::Build->new(
    create_makefile_pl => 'traditional',
    license            => 'perl',
    module_name        => 'Catalyst::Plugin::Session::Store::File',
    requires           => {
        'Class::Data::Inheritable'  => '0.04',
        'Class::Accessor::Fast'     => '0.22',
        'Catalyst'                  => '5',
        'Catalyst::Plugin::Session' => '0.01',
        'Cache::Cache'              => '1.02',
    },
    reccomends    => {},
    create_readme => 1,
    sign          => 0,
);
$build->create_build_script;
