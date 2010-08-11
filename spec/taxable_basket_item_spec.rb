require 'spec_helper'
require 'taxable_basket_item'
describe TaxableBasketItem do

  before(:each) do
    @basket_item = TaxableBasketItem.new("test name", 42.00)
  end

  #shared examples 
  it_should_behave_like "basket item"

  describe "#total_tax" do
    it "should multiply the price calculate a tax amount" do
      @basket_item.total_tax.should eql 4.2
    end

    it "should round to nearest nickel" do
      @basket_item.should_receive(:round_to_nickel).and_return 42
      @basket_item.total_tax.should eql 42
    end
  end

end