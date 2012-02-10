package Parse::FixedRecord::Meta::Role::Class;
use Moose::Role;
use Moose::Util::TypeConstraints;

use List::Util 'sum';

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

sub total_length {
    my $self = shift;
    return sum map { ref($_) ? $_->width : length($_) } @{ $self->fields };
}

no Moose::Role;
no Moose::Util::TypeConstraints;

=head1 NAME

Parse::FixedRecord::Meta::Role::Class - metaclass trait for FixedRecord parsers

=head1 DESCRIPTION

Stores metadata about the parser. 

=head1 METHODS

=head2 total_length

Returns the total length of the string that will be parsed.

=head1 AUTHOR and LICENSE

    osfameron@cpan.org - see Parse::FixedRecord for full details and copyright

=cut

1;
