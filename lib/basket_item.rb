require 'bigdecimal'

class BasketItem
  attr_reader :price
  attr_reader :name

  def initialize(name,price)
    @price = BigDecimal.new(price)
    @name = name
  end

  def tax_amount; 0; end

  def total_item_amount
    tax_amount + price
  end
end