use strict;
use warnings;
use Module::Build;

Module::Build->new(
    module_name        => 'DBIx::Connector',
    license            => 'perl',
    configure_requires => {
        'Module::Build' => '0.30',
    },
    build_requires     => {
        'Module::Build'    => '0.30',
        'Test::More'       => '0.88',
        'Test::MockModule' => '0.05',
    },
    requires           => {
        'DBI'               => '1.605',
        'perl'              => 5.006002,
    },
    recommends         => {
        'DBI'               => '1.614',
    },
    meta_merge         => {
        resources => {
            homepage    => 'http://search.cpan.org/dist/DBIx-Connector/',
            bugtracker  => 'https://github.com/theory/dbix-connector/issues/',
            repository  => 'https://github.com/theory/dbix-connector',
        }
    },
)->create_build_script;
