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
    my ($self) = @_;
    return 8.00 * (scalar @{$self->{items}});
}

sub addBook() {
    my ($self, $book) = @_;
    push(@{$self->{items}}, $book);
}

1;
