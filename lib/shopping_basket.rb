require 'math_helper'
class ShoppingBasket < Array
  include MathHelper
  def total_tax_amount
    self.inject(0) {|total_tax, basket_item| total_tax + basket_item.tax_amount}

  end

  def total_purchase_amount
    self.inject(0) {|total_amount, basket_item| total_amount + basket_item.total_item_amount }
  end
end