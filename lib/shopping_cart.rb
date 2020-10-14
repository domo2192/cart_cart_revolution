class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity= capacity.to_i
    @products = []
end

def add_products(product)

  @products << product
end

def total_number_of_products
  @quantity.count
end

def details
  hash_cart = {name: @name, capacity: @capacity}
end

def total_number_of_products
  if total_number_of_products > 30
    @full = true
  end
end

end
