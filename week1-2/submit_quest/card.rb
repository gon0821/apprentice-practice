class Card
  SUITS = %w[クローバー ダイヤ ハート スペード].freeze
  RANKS = %w[A 2 3 4 5 6 7 8 9 10 J Q K].freeze

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
    "#{@suit}の#{@rank}"
  end

  def score
    return @rank.to_i if @rank.to_i > 0
    case @rank
    when "A" then 1
    when "J", "Q", "K" then 10
    end
  end
end
