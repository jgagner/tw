require 'imported_basket_item'
require 'taxable_basket_item'
require 'math_helper'

class TaxableImportedBasketItem < BasketItem
  include MathHelper
  TAXRATE = ImportedBasketItem::TAXRATE + TaxableBasketItem::TAXRATE

  def total_tax
    round_to_nickel((price * TAXRATE).to_d.to_f)
  end
end