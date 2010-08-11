require 'spec_helper'
describe TaxableBasketItem do
  it "should have a tax rate of 10%" do
    TaxableBasketItem::TAXRATE.should eql 1.10
  end

  describe "#round_to_nickel" do
    it "should round a number that is not in nickel increments to the nearest nickel" do
      pending
#      item =
    end
  end
end