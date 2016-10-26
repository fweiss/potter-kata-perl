package TestShoppingBasket;

use warnings;
use strict;
use base qw(Test::Class);
use Test::More;

__PACKAGE__->runtests unless caller;

sub my_test : Test(startup => 2) {
    use_ok('ShoppingBasket');
    can_ok('ShoppingBasket', 'new');
}

sub setup : Test(setup => 2) {
    my ($self) = @_;
    $self->{basket} = ShoppingBasket->new();
    isa_ok($self->{basket}, 'ShoppingBasket');
    can_ok($self->{basket}, qw(getTotal addBook));
}

sub empty_basket : Test {
    my ($self) = @_;
    is($self->{basket}->getTotal(), 0.00);
}

sub one_book : Test {
    my ($self) = @_;
    $self->{basket}->addBook('book1');
    is($self->{basket}->getTotal(), 8.00);
}

1;
