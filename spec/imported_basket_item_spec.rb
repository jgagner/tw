require 'spec_helper'

describe ImportedBasketItem do
  before(:each) do
    @basket_item = ImportedBasketItem.new("test name",42.00)
  end
  it_should_behave_like "basket item"

  describe "#total_tax" do
    it "should calculate a tax amount of 5%" do
      @basket_item.total_tax.should eql 2.10
    end
  end
end