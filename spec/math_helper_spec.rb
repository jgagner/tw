require 'spec_helper'

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
end