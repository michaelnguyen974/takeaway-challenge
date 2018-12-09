require 'takeaway'

RSpec.describe Takeaway do 
subject(:takeaway) { described_class.new }
let :list_of_dishes do 
    { :'Burger' => 10, :'Pizza' => 14, :'Salad' => 7, :'fries' => 2 }
  end 

  context '#order' do 
    it { is_expected.to respond_to(:order_item).with(2).argument }

    it "raises an error if food item doesn't exit" do 
      expect{takeaway.order_item("Salmon")}.to raise_error "Item not on menu"
    end 

    it 'orders food items from menu' do 
      variable = "Burger"
      expect(takeaway.order_item(variable)).to eq (takeaway.ordered_food)
    end 

    it 'to check my ordered food' do 
      expect(takeaway.check_order).to eq takeaway.ordered_food
    end 

    
  
  end 


end 