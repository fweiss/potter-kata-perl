package ShoppingBasket;

sub new() {
    my $class = shift;
    my $self = {
        items => []
    };
    bless $self, $class;
    return $self;
}

sub getTotal() {
    return 8.00 * ($#{self->{items}} + 1);
}

sub addBook() {
    my $title = shift;
    push @{self->{items}}, $title;
}

1;
