puts 'ブラックジャックを開始します。'

CONVERT = {
  11 => 'J',
  12 => 'Q',
  13 => 'K',
}

#カードを取得
player_first = rand(1..13)
if player_first > 10
  player_first_card = CONVERT[player_first]
  player_first = 10
else
  player_first_card = player_first
end

puts "あなたの引いたカードは#{player_first_card}です"

dealer_first = rand(1..13)
if dealer_first > 10
  dealer_first_card = CONVERT[dealer_first]
  dealer_first = 10
else
  dealer_first_card = dealer_first
end
puts "ディーラーの引いたカードは#{dealer_first_card}です"

#カードの取得地を判定
if player_first > dealer_first
  puts 'あなたの勝ちです!'
elsif player_first < dealer_first
  puts 'ディーラーの勝ちです!'
else
  puts '引き分けです!'
end


puts 'ブラックジャックを終了します。'
