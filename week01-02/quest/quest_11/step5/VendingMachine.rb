require_relative 'Item.rb'
require_relative 'Drink.rb'
require_relative 'CupDrink.rb'

class VendingMachine

  MAX_CUP_NUMBER = 100;

  attr_accessor :deposited_coin, :cup_number

  def initialize(manufacture_name)
    @manufacture_name = manufacture_name
    @deposited_coin = 0
    @cup_number = 0
  end

  def deposit_coin(coin_amount)
    if coin_amount == 100
      @deposited_coin += coin_amount
    end
  end

  def press_button(item)
    price = item.get_price
    cup_number = item.get_cup_number
    if @deposited_coin >= price && @cup_number >= cup_number
      @deposited_coin -= price
      @cup_number -= cup_number
      item.name
    else
      ''
    end
  end

  def add_cup(num)
    @cup_number = @cup_number + num
    if @cup_number > MAX_CUP_NUMBER
      @cup_number = MAX_CUP_NUMBER
    end
  end

  private

  def press_manufacture_name
    @manufacture_name
  end
end

hot_cup_coffee = CupDrink.new('hot')
cola = Drink.new('cola')

vending_machine = VendingMachine.new('サントリー')
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)

puts vending_machine.press_button(cola)

puts vending_machine.press_button(hot_cup_coffee)
vending_machine.add_cup(110)
puts vending_machine.press_button(hot_cup_coffee)
puts vending_machine.cup_number
