require_relative "player.rb"

class Dealer < Player
  def dealer_turn(deck, hand)
    puts "ディーラーの引いた2枚目のカードは#{@cards[1].to_s}でした。"
    score = hand.calculate_score(@cards)
    puts "ディーラーの現在の得点は#{score}です。"

    while score < 17
      draw(deck, 1)
      new_card = @cards.last
      puts "ディーラーの引いたカードは#{new_card.to_s}です"
      score = hand.calculate_score(@cards)
    end
  end
end
