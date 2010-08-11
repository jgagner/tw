#I think inhertance (as opposed to composition) is ok here. It passes the "is-a" test.
class TaxableBasketItem < BasketItem
  TAXRATE = 1.10
  
  def round_to_nickel number
    # This method could potentially be mixed in with the float class, but in this instance I do not feel
    # every float needs a round_to_nickel method.
    # This could potentially be one line, but I feel this is a lot more clear
    remainder = number % 0.05
    number - remainder + 0.05
  end
end