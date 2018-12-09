require_relative 'menu'

class Takeaway
  attr_reader :menu, :ordered_food, :items

  def initialize(menu = Menu.new)
    @menu = menu
    @ordered_food = []
  end 

  def order_item(dish, quantity = 1) 
    raise "Item not on menu" unless menu.list_of_dishes.has_key? dish.to_sym
    item = {}
    item[:dish] = dish 
    item[:quantity_of_dish] = quantity
    ordered_item = menu.list_of_dishes.select { |item, price| item.to_s == dish }
    p "You have ordered" + " #{ordered_item.keys}" + " #{quantity}" 
    @ordered_food << item
    end 

    def check_order
      @ordered_food
    end 

end 

