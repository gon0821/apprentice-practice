require_relative 'Player.rb'

class Dealer < Player

  def get_card
    2.times do |i|
        @card_num = rand(1..13)
      if @card_num > 10
        card_word = CONVERT[@card_num]
        @card_num = 10
      else
        card_word = @card_num
      end
      @card_sum += @card_num

      if i == 0
        puts "#{@player}の引いたカードは#{MARK.sample}の#{card_word}です。"
      elsif i == 1
        puts "ディーラーの引いた2枚目のカードは分からないようになっています。"
        @second_num = @card_num
      end
    end
  end

  def add_card
    puts "ディーラーの引いた2枚目のカードは#{MARK.sample}の#{@second_num}でした。"
    puts "ディーラーの現在の得点は#{@card_sum}です。"
    while @card_sum < 17
      card_add = rand(1..13)
      if card_add > 10
        card_add_word = CONVERT[card_add]
        card_add = 10
      else
        card_add_word = card_add
      end
      @card_sum += card_add
      puts "ディーラーが追加で引いたカードは#{MARK.sample}の#{card_add_word}です。"
    end
  end

end
