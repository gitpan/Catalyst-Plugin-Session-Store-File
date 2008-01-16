use inc::Module::Install 0.68;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/Catalyst/Plugin/Session/Store/File.pm > README' );
}

perl_version '5.008';

name 'Catalyst-Plugin-Session-Store-File';
all_from 'lib/Catalyst/Plugin/Session/Store/File.pm';

requires 'Class::Data::Inheritable'  => '0.04';
requires 'Catalyst::Runtime'         => '5.7000';
requires 'Cache::Cache'              => '1.02'; # for Cache::FileCache
requires 'Catalyst::Plugin::Session';

test_requires 'Test::More';

auto_install;
WriteAll;
