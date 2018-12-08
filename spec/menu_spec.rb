require 'menu'

RSpec.describe Menu do 
subject(:menu) { described_class.new }

  let :list_of_dishes do 
  [
    { name: 'Burger', price: 10 },
    { name: 'Pizza', price: 14 },
    { name: 'Salad', price: 7 },
    { name: 'fries', price: 2.90 }
  ]
  end 

  context '#dishes' do 
    it { is_expected.to respond_to :list_of_dishes }

    it 'returns list of dishes' do 
      menu = Menu.new
      expect(menu.list_of_dishes).to eq(list_of_dishes)
    end 
  end 
end 