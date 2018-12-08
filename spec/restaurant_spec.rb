# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices

require 'restaurant'

RSpec.describe Restaurant do 
let (:menu) {double :menu}
subject(:restaurant) { described_class.new }
  context 'First user story - see a list of dishes' do
    
    it 'expects the restaurant object to respond to an argument' do 
    expect(restaurant).to respond_to(:order).with(1).argument 
    end 

    it 'views a list of dishes with prices attached' do 
      expect {restaurant.order(menu).not_to raise_error}
    end 
  end 
end 