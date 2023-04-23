require_relative "Player.rb"
require_relative "Dealer.rb"
require_relative "Gest.rb"

class GameRule
  def blackjack_start
      "ブラックジャックを開始します。"
  end

  def sum(gest,dealer)
    puts "あなたの得点は#{gest.card_sum}です。"
    puts "ディーラーの得点は#{dealer.card_sum}です。"
  end

  def judge(gest,dealer)
    if gest.card_sum > dealer.card_sum || 21 < dealer.card_sum
      "あなたの勝ちです!"
    elsif gest.card_sum < dealer.card_sum
      "ディーラーの勝ちです!"
    else
      "引き分けです"
    end
  end

  def blackjack_end
      "ブラックジャックを終了します。"
  end
end



game_rule = GameRule.new
gest = Gest.new('あなた')
dealer = Dealer.new('ディーラー')

puts game_rule.blackjack_start
gest.get_card
dealer.get_card
gest.add_card
dealer.add_card

game_rule.sum(gest,dealer)
puts game_rule.judge(gest,dealer)
puts game_rule.blackjack_end
