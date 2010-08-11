require 'math_helper'
#I think inhertance (as opposed to composition) is ok here. It passes the "is-a" test.
class TaxableBasketItem < BasketItem
  include MathHelper
  TAXRATE = 0.10

  def total_tax
    #tax calculation can be included in a module and mixed in, or put in a base class
    #however it is so simple that it isn't warranted in this instance.
    round_to_nickel(price * TAXRATE)
  end
end