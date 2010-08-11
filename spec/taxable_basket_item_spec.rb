require 'spec_helper'
require 'taxable_basket_item'
describe TaxableBasketItem do

  before(:each) do
    @basket_item = TaxableBasketItem.new("test name", "42.00")
  end

  #shared examples 
  it_should_behave_like "basket item"
  it_should_behave_like "taxable basket item"
end