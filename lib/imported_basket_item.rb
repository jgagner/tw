require 'math_helper'
require 'basket_item'
class ImportedBasketItem < BasketItem
  include MathHelper
  TAXRATE = 0.05

  def total_tax
    round_to_nickel(price * TAXRATE)
  end
end