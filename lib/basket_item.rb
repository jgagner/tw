class BasketItem
  attr_accessor :price
  attr_accessor :name

  def initialize(name,price)
    @price = price
    @name = name
  end

  def total_tax; 0; end
end