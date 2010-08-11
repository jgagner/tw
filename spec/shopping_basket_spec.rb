require 'spec_helper'
require 'shopping_basket'
require 'basket_item'
require 'imported_basket_item'
require 'taxable_basket_item'
require 'taxable_imported_basket_item'

describe ShoppingBasket do

  def basket_items
    #1 imported bottle of perfume at 27.99
    #1 bottle of perfume at 18.99
    #1 packet of headache pills at 9.75
    #1 box of imported chocolates at 11.25
    @basket_items ||=
        [
            BasketItem.new("packet of headache pills", "9.75"),
            ImportedBasketItem.new("imported chocolates ", "11.25"),
            TaxableBasketItem.new("bottle of perfume", "18.99"),
            TaxableImportedBasketItem.new("imported bottle of perfume", "27.99")
        ]
  end

  def shopping_basket(items=self.basket_items)
    @shopping_basket ||= ShoppingBasket.new(items)
  end


  it "should accept and keep track of basket items" do
    shopping_basket
    shopping_basket.should include(*self.basket_items)
  end

  describe "#total_tax_amount" do
    it "should total the tax from its items" do
      shopping_basket.total_tax_amount.should eql 6.70
    end
  end

  describe "#total_purchase_amount" do
    it "should sum all the items including taxes" do
      shopping_basket.total_purchase_amount.should eql 74.68
    end
  end

end