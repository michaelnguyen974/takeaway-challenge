require_relative 'menu'

class Restaurant

  def initialize (menu = Menu.new )
    @menu = menu 
  end 

  def order(menu)
  end 

end 

