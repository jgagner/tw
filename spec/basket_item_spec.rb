require 'spec_helper'
require 'basket_item'
describe BasketItem do

  before(:each) do
    @basket_item = BasketItem.new("test name","42.00")
  end

  it_should_behave_like "basket item"

  it "should calculate a total tax amount of 0" do
    @basket_item.tax_amount.should eql 0
  end
end