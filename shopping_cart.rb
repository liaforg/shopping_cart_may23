require_relative 'products.rb'

class Shopping_Cart
  @@products = []

  def initialize
    @cost_before_tax = 0
    @cost_after_tax  = 0
  end

  def self.all_products
    @@products
  end

  def self.cost_before_tax
    @cost_before_tax = 0
    @@products.each do |product|
    @cost_before_tax += product.base_price
  end
    @cost_before_tax
  end

 def self.cost_after_tax
   @@products.each do |product|
   @cost_after_tax = (product.base_price * @tax)
  end
   @cost_after_tax
 end


 def self.add_product(name,price)
  new_product = Products.new(name,price)
  @@products << new_product
  new_product
 end

 def self.rem_product(inst)
  @@products.delete(inst)
 end

end
