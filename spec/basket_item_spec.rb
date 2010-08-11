require 'spec_helper'

describe BasketItem do
  describe "accessors" do

    it "should accept and report a name" do
      item = BasketItem.new("test name",0)
      item.name.should eql "test name"
    end

    it "should accept and report a price" do
      item = BasketItem.new("",42)
      item.price.should be 42
    end

    it "should calculate a total tax amount of 0" do
      item = BasketItem.new("",42)
      item.total_tax.should eql 0
    end
    
  end
end