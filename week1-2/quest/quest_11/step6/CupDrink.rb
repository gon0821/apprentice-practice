require_relative 'Item.rb'

class CupDrink < Item
  PRICE = {
    hot_cup_coffee: 100,
    cold_cup_coffee: 150,
  }

    def initialize(name)
    @name = "#{name}_cup_coffee"
  end

  def get_price
    PRICE[@name.to_sym]
  end

  def name
    if @name == 'hot_cup_coffee'
      'hot cup coffee'
    else
      'cold cup coffee'
    end
  end

  def get_cup_number
    1
  end
end
