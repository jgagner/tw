require 'imported_basket_item'
require 'taxable_basket_item'
require 'math_helper'

class TaxableImportedBasketItem < BasketItem
  include MathHelper
  TAXRATE = ImportedBasketItem::TAXRATE + TaxableBasketItem::TAXRATE

  def total_tax
    calculate_tax(price, TAXRATE)
  end
end