require 'spec_helper'

describe TaxableBasketItem do

  before(:each) do
    @basket_item = TaxableBasketItem.new("test name", 42.00)
  end

  #shared examples 
  it_should_behave_like "basket item"

  it "should have a tax rate of 10%" do
    TaxableBasketItem::TAXRATE.should eql 0.10
  end

  describe "#total_tax" do
    it "should multiply the price calculate a tax amount" do
      @basket_item.total_tax.should eql 4.2
    end

    it "should round to nearest nickel" do
      @basket_item.should_receive(:round_to_nickel).and_return 42
      @basket_item.total_tax.should eql 42
    end
  end

  describe "#round_to_nickel" do
    it "should not modify a value currently at a nickel" do
      @basket_item.round_to_nickel(0.55).should eql 0.55
    end
    it "should round a value not at a nickel to a nickel" do
      @basket_item.round_to_nickel(100.72).should eql 100.75
    end
  end

end