class Menu 
  attr_reader :list_of_dishes

  def initialize
    @list_of_dishes = [
      { name: 'Burger', price: 10 },
      { name: 'Pizza', price: 14 },
      { name: 'Salad', price: 7 },
      { name: 'fries', price: 2.90 }
    ]
  end 

  #def list_of_dishes
  #@list_of_dishes
  #end <-- this is what attr_reader is doing 
end 










