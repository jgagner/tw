shared_examples_for 'basket item' do
  it "should accept and report a name" do
    @basket_item.name.should eql "test name"
  end

  it "should accept and report a price" do
    @basket_item.price.should eql 42.00
  end

end