shared_examples_for 'basket item' do

  describe "properites " do
    
    it "should accept and report a name" do
      @basket_item.name.should eql "test name"
    end

    it "should accept and report a price" do
      @basket_item.price.should eql 42.00
    end
  end

  describe "#total_item_amount" do

    before(:each) do
      @basket_item.stub!(:tax_amount).and_return 21
      @basket_item.stub!(:price).and_return 21
    end

    it "should sum and return the tax amount and price" do
      @basket_item.total_item_amount.should eql 42
    end
  end
end

shared_examples_for 'taxable basket item' do

  describe "#total_tax" do

    it "should calculate the tax with the price and tax rate" do

      @basket_item.should_receive(:calculate_tax) do |price, taxrate|

        price.should eql @basket_item.price
        taxrate.should eql @basket_item.class::TAXRATE
        42
      end
      @basket_item.tax_amount.should eql 42
    end
  end
end