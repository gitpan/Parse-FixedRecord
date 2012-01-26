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

license     'perl';
author      'osfameron';

auto_install;
WriteAll;
