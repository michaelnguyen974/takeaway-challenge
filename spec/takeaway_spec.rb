require 'takeaway'

RSpec.describe Takeaway do 
subject(:takeaway) { described_class.new }
let :list_of_dishes do 
    { :'Burger' => 10, :'Pizza' => 14, :'Salad' => 7, :'fries' => 2 }
  end 

  context '#order' do 
    it { is_expected.to respond_to(:order).with(2).argument }

    it "raises an error if food item doesn't exit" do 
      expect{takeaway.order("Salmon")}.to raise_error "Item not on menu"
    end 
    
    it 'orders food items from menu' do 
      expect(takeaway.order("Burger")).to eq ["Burger"]
    end 

    it 'to check my ordered food' do 
      expect(takeaway.check_order).to eq takeaway.ordered_food
    end 

  
  end 


end 