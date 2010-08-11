require 'math_helper'
require 'basket_item'

# I think inhertance (as opposed to composition) is ok here. It passes the "is-a" test.
class TaxableBasketItem < BasketItem
  include MathHelper
  TAXRATE = 0.10

  def tax_amount
    calculate_tax(price, TAXRATE)
  end
end