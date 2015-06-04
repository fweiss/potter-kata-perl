package ShoppingBasket;

sub new() {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub getTotal() {
    return 0;
}

1;
