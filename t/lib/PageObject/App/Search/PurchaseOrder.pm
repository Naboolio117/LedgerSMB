package PageObject::App::Search::PurchaseOrder;

use strict;
use warnings;

use Carp;
use PageObject::App::Search;

use Moose;
extends 'PageObject::App::Search';

my $page_heading = 'Search Purchase Orders';

sub _verify {
    my ($self) = @_;

    $self->stash->{ext_wsl}->page
        ->find("//*[\@id='maindiv']
                           [.//*[\@class='listtop'
                                 and text()='$page_heading']]");

    return $self;
}

__PACKAGE__->meta->make_immutable;

1;
