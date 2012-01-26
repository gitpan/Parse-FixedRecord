package Parse::FixedRecord::Meta::Role::Class;
use Moose::Role;
use Moose::Util::TypeConstraints;

subtype 'My::MMA' =>
    as class_type('Moose::Meta::Attribute');

has fields => (
    traits  => ['Array'],
    is      => 'ro',
    isa     => 'ArrayRef[Str|My::MMA]',
    default => sub { [] },
    handles => {
        add_field => 'push',
    },
);

no Moose::Role;
no Moose::Util::TypeConstraints;

=head1 NAME

Parse::FixedRecord::Meta::Role::Class - metaclass trait for FixedRecord parsers

=head1 DESCRIPTION

Stores metadata about the parser. 

=head1 AUTHOR and LICENSE

    osfameron@cpan.org - see Parse::FixedRecord for full details and copyright

=cut

1;
