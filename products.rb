class Products

  attr_accessor :name, :base_price
  attr_reader :tax

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax = 1.13
  end

  def total_cost
    @total_cost = @base_price * @tax
    @total_cost.round(2)
  end



end
