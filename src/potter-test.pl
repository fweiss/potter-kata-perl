use Test::More;

use ShoppingBasket;

$basket = ShoppingBasket->new();

is($basket->getTotal(), 0.00, "empty basket");
$basket->addBook("first");
is($basket->getTotal(), 8.00, "one book");

done_testing();
