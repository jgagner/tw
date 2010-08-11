require 'spec_helper'

describe TaxableBasketItem do

  before(:each) do
    @basket_item = TaxableBasketItem.new("test name",42.00)
  end
  
  #shared examples 
  it_should_behave_like "basket item"
  
  it "should have a tax rate of 10%" do
    TaxableBasketItem::TAXRATE.should eql 0.10
  end

  it "should properly calculate a tax amount" do
    @basket_item.total_tax.should eql 4.2
  end

end