require 'bigdecimal'
require 'bigdecimal/util'

module MathHelper
  
  def round_to_nickel number
    ((number * 20.00).ceil/20.00)
  end

  def calculate_tax price, tax_rate
    round_to_nickel(price * tax_rate)
  end
end