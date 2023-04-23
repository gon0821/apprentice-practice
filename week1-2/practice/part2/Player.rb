class Player
    CONVERT = {
    11 => 'J',
    12 => 'Q',
    13 => 'K',
  }

  MARK = ['スペード', 'クローバー', 'ハート', 'ダイヤ']

  attr_accessor :card_num, :card_sum

  def initialize(player)
    @player = player
    @card_num = 0
    @card_sum = 0
  end

  def get_card
    2.times do 
        @card_num = rand(1..13)
      if @card_num > 10
        card_word = CONVERT[@card_num]
        @card_num = 10
      else
        card_word = @card_num
      end
      puts "#{@player}の引いたカードは#{MARK.sample}の#{card_word}です。"
      @card_sum += @card_num
    end
  end

end
