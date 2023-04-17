class VendingMachine

  DRINK_PRICE = 100

  def initialize(manufacture_name)
    @manufacture_name = manufacture_name
    @deposited_coin = 0
  end

  def deposit_coin(coin_amount)
    if coin_amount == 100
      @deposited_coin += coin_amount
    end
  end

  def press_button()
    if @deposited_coin >= DRINK_PRICE
      'cider'
    else
      ''
    end
  end

  private

  def press_manufacture_name
    @manufacture_name
  end
end

vending_machine = VendingMachine.new('サントリー')
# puts vending_machine.press_button

# vending_machine.deposit_coin(150)
# puts vending_machine.press_button

vending_machine.deposit_coin(100)
puts vending_machine.press_button

# puts vending_machine.press_manufacture_name
