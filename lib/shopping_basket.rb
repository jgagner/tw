class ShoppingBasket < Array
  def total_taxes
    self.inject(0) {|total_tax, basket| total_tax + basket.total_tax}
  end
end