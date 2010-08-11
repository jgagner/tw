require 'math_helper'
require 'basket_item'
class ImportedBasketItem < BasketItem
  include MathHelper
  TAXRATE = 0.05

  def total_tax
    calculate_tax(price,TAXRATE)
  end
end