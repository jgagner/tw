require 'bigdecimal'
require 'bigdecimal/util'
module MathHelper
  def round_to_nickel number
    ((number * 20.00).ceil/20.00).to_d
  end
end