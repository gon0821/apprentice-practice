require_relative 'Player.rb'

class Gest < Player

  def add_card
    puts "あなたの現在の得点は#{@card_sum}です。カードを引きますか？(Y/N) → "
    input = gets.chomp.upcase
    if input == 'Y'
      while input == 'Y'
        card_add = rand(1..13)
        if card_add > 10
          card_add_word = CONVERT[card_add]
          card_add = 10
        else
          card_add_word = card_add
        end

        puts "あなたの追加で引いたカードは#{MARK.sample}の#{card_add_word}です。"
        @card_sum += card_add
        if @card_sum > 21
          puts "あなたの得点が#{@card_sum}となり21を超えたため、ディーラーの勝ちです!"
          puts "ブラックジャックを終了します。"
          exit
        end

        puts "あなたの現在の得点は#{@card_sum}です。カードを引きますか？(Y/N) → "
        input = gets.chomp.upcase
      end

    elsif input == 'N'
      puts 'あなたの番を終了します。'
    else
      puts '「Y」または「N」を入力してください。'
    end
  end
end
