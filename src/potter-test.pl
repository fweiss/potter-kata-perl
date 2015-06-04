use Test::More;

use ShoppingBasket;

$basket = ShoppingBasket->new();

is($basket->getTotal(), 0, "empty basket");

done_testing();
