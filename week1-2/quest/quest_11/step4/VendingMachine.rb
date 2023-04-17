require_relative 'Item.rb'

class VendingMachine

  attr_accessor :deposited_coin

  def initialize(manufacture_name)
    @manufacture_name = manufacture_name
    @deposited_coin = 0
  end

  def deposit_coin(coin_amount)
    if coin_amount == 100
      @deposited_coin += coin_amount
    end
  end

  def press_button(item)
    price = item.get_price
    if @deposited_coin >= price
      @deposited_coin -= price
      item.name
    else
      ''
    end
  end

  private

  def press_manufacture_name
    @manufacture_name
  end
end

cola = Item.new('cola')
cider = Item.new('cider')
vending_machine = VendingMachine.new('サントリー')
vending_machine.deposit_coin(100)
puts vending_machine.press_button(cola)

vending_machine.deposit_coin(100)
puts vending_machine.press_button(cola)
puts vending_machine.deposited_coin
vending_machine.deposit_coin(100)
puts vending_machine.press_button(cider)
# puts vending_machine.press_manufacture_name
