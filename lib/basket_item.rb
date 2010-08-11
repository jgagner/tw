require 'bigdecimal'

class BasketItem
  attr_reader :price
  attr_reader :name

  def initialize(name,price)
    @price = BigDecimal.new(price)
    @name = name
  end

  def total_tax; 0; end
end