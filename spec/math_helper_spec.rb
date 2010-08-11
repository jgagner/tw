require 'spec_helper'
require 'math_helper'

describe MathHelper do
  include MathHelper
  
  describe "#round_to_nickel" do
    it "should not modify a value currently at a nickel" do
      round_to_nickel(0.55).should eql 0.55
    end
    it "should round a value not at a nickel to a nickel" do
      round_to_nickel(100.72).should eql 100.75
    end
  end

  describe "#calculate_tax" do
    it "should multiply the price by the rate" do
      should_receive(:round_to_nickel).with(10).and_return(42)
      calculate_tax(100,0.10).should eql 42
    end
    it "should keep appropriate precision"
  end
end