class Menu 
  attr_reader :list_of_dishes

  def initialize
    @list_of_dishes = 
      { :'Burger' => 10, :'Pizza' => 14, :'Salad' => 7, :'fries' => 2 }
  end

end 


  # def print_dishes
  #   list_of_dishes.map do |key, value|
  #     '%s %.2f' % [key.to_s, value]
  #   end
  # end 



  #def list_of_dishes
  #@list_of_dishes
  #end <-- this is what attr_reader is doing 











