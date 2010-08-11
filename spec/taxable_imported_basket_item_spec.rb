require 'spec_helper'
require 'taxable_imported_basket_item'
require 'bigdecimal'
require 'bigdecimal/util'

describe TaxableImportedBasketItem do

  before(:each) do
    @basket_item = TaxableImportedBasketItem.new("test name", "42.00")
  end

  it_should_behave_like "basket item"
  it_should_behave_like "taxable basket item"
end