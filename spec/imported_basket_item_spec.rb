require 'spec_helper'
require 'imported_basket_item'

describe ImportedBasketItem do
  before(:each) do
    @basket_item = ImportedBasketItem.new("test name","42.00")
  end
  it_should_behave_like "basket item"
  it_should_behave_like "taxable basket item"
end