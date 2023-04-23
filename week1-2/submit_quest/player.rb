class Player
  attr_accessor :name, :cards

  def initialize(name)
    @name = name
    @cards = []
  end

  def draw(deck, number)
    @cards << deck.draw(number)
    @cards.flatten!
  end

  def player_turn(deck,hand)
    score = hand.calculate_score(@cards)
    if score > 21
      puts "あなたの現在の得点は#{score}です。バーストしました。"
      return false
    end

    puts "あなたの現在の得点は#{score}です。カードを引きますか？（Y/N）"
    answer = gets.chomp.upcase
    if answer == "Y"
      draw(deck, 1)
      new_card = @cards.last
      puts "あなたの引いたカードは#{new_card.to_s}です"
      return true
    elsif answer == "N"
      return false
    else
      puts "無効な入力です。もう一度入力してください"
      return true
    end
  end
end
