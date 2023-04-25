require_relative "deck.rb"
require_relative "player.rb"
require_relative "dealer.rb"
require_relative "hand.rb"

class Game
  def initialize
    @hand = Hand.new
    @deck = Deck.new
    @player = Player.new('あなた')
    @dealer = Dealer.new('ディーラー')
  end

  def play
    puts "ブラック・ジャックを開始します。"
    #2枚ずつ引く
    @player.draw(@deck, 2)
    puts "#{@player.name}の引いたカードは#{@player.cards[0].to_s}です"
    puts "#{@player.name}の引いたカードは#{@player.cards[1].to_s}です"

    @dealer.draw(@deck, 2)
    puts "#{@dealer.name}の引いたカードは#{@dealer.cards[0].to_s}です"
    puts "#{@dealer.name}の引いた2枚目のカードは伏せられています。"
    # プレイヤーの3枚目以降
    loop do
      break unless @player.player_turn(@deck,@hand)
    end
    # ディーラーの3枚目以降
    @dealer.dealer_turn(@deck,@hand) unless @hand.busted?(@player.cards)

    puts "#{@player.name}の得点は#{@hand.calculate_score(@player.cards)}です。"
    puts "#{@dealer.name}の得点は#{@hand.calculate_score(@dealer.cards)}です。"

    result = @hand.judge(@player.cards, @dealer.cards)
    puts result

    puts "ブラック・ジャックを終了します。"
  end
end
