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

