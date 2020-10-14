require './lib/product'
require './lib/shopping_cart'
require 'minitest/autorun'
require 'pry'

class ShoppingCartTest < Minitest::Test

  def setup
  @cart = ShoppingCart.new("King Soopers", "30items")
  end
  def test_it_exists

    assert_instance_of ShoppingCart, @cart
  end

  def test_it_has_a_name
  assert_equal 'King Soopers',@cart.name
  end

  def test_capacity_returns_as_a_interger
  assert_equal 30, @cart.capacity

  end

  def test_products_returns_empty_array
  assert_equal [], @cart.products
  end

  def test_it_adds_products
    @cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    @cart.add_products(product1)
    @cart.add_products(product2)
    @cart.add_products(product3)
      binding.pry  # I can't find why this is breaking 
    assert_equal [product1, product2, product3], @cart.products
    assert_equal 13, @cart.total_number_of_products
  end


  def test_details_are_in_hash
    expected = {name: "King Soopers", capacity: 30}
    assert_equal expected, @cart.details
  end
end
