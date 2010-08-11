#I think inhertance (as opposed to composition) is ok here. It passes the "is-a" test.
class TaxableBasketItem < BasketItem
  TAXRATE = 0.10

  def round_to_nickel number
   (number * 20).ceil/20.00
  end

  def total_tax
    round_to_nickel(price * TAXRATE)
  end
end