class ShoppingBasket < Array
  def total_tax_amount
    tax_amount = self.inject(0) {|total_tax, basket_item| total_tax + basket_item.tax_amount}
    ("%.2f" % tax_amount)
  end

  def total_purchase_amount
    total_amount = self.inject(0) {|total_amount, basket_item| total_amount + basket_item.total_item_amount }
    ("%.2f" % total_amount)
  end
end