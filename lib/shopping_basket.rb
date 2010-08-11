require 'math_helper'
require 'bigdecimal'
require 'bigdecimal/util'
class ShoppingBasket < Array

  include MathHelper

  def total_tax_amount
    self.inject(0) {|total_tax, basket_item| total_tax + basket_item.tax_amount}.to_d

  end

  def total_purchase_amount
    self.inject(0) {|total_amount, basket_item| total_amount + basket_item.total_item_amount }.to_d
  end
end