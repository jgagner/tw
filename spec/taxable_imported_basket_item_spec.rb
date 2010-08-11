require 'spec_helper'
require 'taxable_imported_basket_item'
require 'bigdecimal'
require 'bigdecimal/util'
describe TaxableImportedBasketItem do

  before(:each) do
    @basket_item = TaxableImportedBasketItem.new("test name", 42.00)
  end

  #shared examples
  it_should_behave_like "basket item"

  describe "#total_tax" do
    it "should multiply the price and  round to nearest nickel" do
      @basket_item.should_receive(:round_to_nickel) do |value|
        value.should eql 6.3
        42 #return 42 so we can test
      end
      @basket_item.total_tax.should eql 42
    end
  end

end