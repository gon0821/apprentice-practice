class Item
  DRINK_PRICE = {
    cider: 100,
    cola: 150,
  }

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def get_price
    DRINK_PRICE[@name.to_sym]
  end

end

# cola = Item.new('cola')
# puts cola.get_price

# DRINK_PRICE = {
#     cider: 100,
#     cola: 150,
#   }

#   puts DRINK_PRICE[:cola]
