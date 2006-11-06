package MyApp;

use strict;
use warnings;
use Catalyst qw/Session Session::Store::File Session::State::Foo/;

__PACKAGE__->config->{session} = {
    storage => '/tmp/session'
};

sub default {
    my ($self, $c) = @_;
    $c->session->{foo} = 'bar'; # will be saved
}

1;