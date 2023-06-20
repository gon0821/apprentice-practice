require_relative 'Item.rb'

class Drink < Item
  PRICE = {
    cider: 100,
    cola: 150,
  }

  def get_price
    PRICE[@name.to_sym]
  end

  def get_cup_number
    0
  end
end
