# example using Test::More instead of Test::Class
use Test::More;

use ShoppingBasket;

$basket = ShoppingBasket->new();

is($basket->getTotal(), 0.00, "empty basket");

done_testing();
