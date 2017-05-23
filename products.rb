class Products

  attr_accessor :name, :base_price, :tax

  def initialize(name, base_price)
    @name = name
    @price = base_price
    @tax = 1.13
  end

  def total_cost
    @total_cost = @price * @tax
    @total_cost.round(2)
  end


product1 = Products.new('apple', 1)
product2 = Products.new('orange', 2)
product3 = Products.new('lemon', 3)
product4 = Products.new('banana', 4)
product5 = Products.new('cherry', 5)

end
