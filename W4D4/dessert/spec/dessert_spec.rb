require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) {Dessert.new("cake", 10, "chad")}
  let(:chef) { double("chef", name:"Chad") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do 
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do  
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("cake", "cheese", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) {dessert.add_ingredient("cheese")}
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to include("cheese")
    end
  end

  describe "#mix!" do
    before(:each) {dessert.add_ingredient("cheese")}
    it "shuffles the ingredient array" do 
      expect(dessert.mix!).to include("cheese")
    end
  end

  describe "#eat" do
    before(:each) { dessert.eat(5)}
    it "subtracts an amount from the quantity" do 
      expect(dessert.quantity).to eq(5)
    end
    
    it "raises an error if the amount is greater than the quantity" do 
      expect {dessert.eat(20)}.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(dessert.serve).to include("Chad") 
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:bake).with(dessert) 
    end
  end
end
