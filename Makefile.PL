use strict;
use warnings;
use inc::Module::Install;

name        'Parse-FixedRecord';
all_from    'lib/Parse/FixedRecord.pm';

requires 'Moose' => 1.15;
requires 'DateTime';
requires 'DateTime::Format::Strptime';
requires 'DateTime::Format::Duration';
requires 'List::Util';

test_requires 'Test::More';
test_requires 'Test::Fatal';

license     'perl';
author      'osfameron';

auto_install;
WriteAll;
