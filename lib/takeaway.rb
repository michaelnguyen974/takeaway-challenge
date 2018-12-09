require_relative 'menu'

class Takeaway
  attr_reader :menu, :ordered_food

  def initialize(menu = Menu.new)
    @menu = menu
    @ordered_food = []
  end 


  # def order(list_of_dishes)
  #   @ordered_food << list_of_dishes
  # end 

  def order(dish, quantity = 1) 
    raise "Item not on menu" unless menu.list_of_dishes.has_key? dish.to_sym
    order_item = dish   
    ordered_item = menu.list_of_dishes.select { |item, price| item.to_s == order_item }
    p "You have ordered a" + " #{ordered_item.keys}"
    ordered_item.keys if menu.list_of_dishes.has_key? dish.to_sym
    @ordered_food << order_item
    end 

    def check_order
      @ordered_food
    end 
end 

