require 'menu'

RSpec.describe Menu do 
subject(:menu) { described_class.new }

  let :list_of_dishes do 
    { :'Burger' => 10, 
      :'Pizza' => 14, 
      :'Salad' => 7, 
      :'fries' => 2 
    }
  end 

  context '#dishes' do 
    it { is_expected.to respond_to :list_of_dishes }

    it 'returns list of dishes' do 
      menu = Menu.new
      expect(menu.list_of_dishes).to eq(list_of_dishes)
    end 

    # it 'prints the dishes' do 
    #   expect(menu.print_dishes).to eq(list_of_dishes)
    # end 

  end 
end 