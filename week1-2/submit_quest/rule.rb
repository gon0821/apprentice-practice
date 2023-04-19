puts 'ブラックジャックを開始します。'

#プレイヤーのカードを取得
player_first_mark_rand = rand(1..4)
player_second_mark_rand = rand(1..4)
player_third_mark_rand = rand(1..4)
#マークへ変換
mark = ['スペード', 'クローバー', 'ハート', 'ダイヤ']
player_first_mark = mark[player_first_mark_rand - 1]
player_second_mark = mark[player_second_mark_rand - 1]
player_third_mark = mark[player_third_mark_rand - 1]

player_first_card = rand(1..13)
player_second_card = rand(1..13)
player_third_card = rand(1..13)

#J,Q,Kを10へ変換
if player_first_card > 10
  player_first_card = 10
end
if player_second_card > 10
  player_second_card = 10
end
if player_third_card > 10
  player_third_card = 10
end

sum_player_score = player_first_card + player_second_card

puts "あなたの引いた1枚目のカードは#{player_first_mark}の#{player_first_card}です"
puts "あなたの引いた2枚目のカードは#{player_second_mark}の#{player_second_card}です"

print "あなたの現在の得点は#{sum_score}です。カードを引きますか？(Y/N) → "
input = gets.chomp.upcase

if input == 'Y'
  puts "あなたの引いたカードは#{player_third_mark}の#{player_third_card}です。"
elsif input == 'N'
  puts 'ステイします。'
else
  puts '「Y」または「N」を入力してください'
end

#ディーラーのカードを取得
dealer_first_mark_rand = rand(1..4)
dealer_second_mark_rand = rand(1..4)
#マークへ変換
dealer_first_mark = mark[dealer_first_mark_rand - 1]
dealer_second_mark = mark[dealer_second_mark_rand - 1]

dealer_first_card = rand(1..13)
dealer_second_card = rand(1..13)
#J,Q,Kを10へ変換
if dealer_first_card > 10
  dealer_first_card = 10
end
if dealer_second_card > 10
  dealer_second_card = 10
end

puts "ディーラーの引いた1枚目のカードは#{dealer_first_mark}の#{dealer_first_card}です"
puts "ディーラーの引いた2枚目のカードは#{dealer_second_mark}の#{dealer_second_card}です"
# puts "ディーラーの引いた2枚目のカードは伏せてあります。"

# カードの取得地を判定
if player_first_card + player_second_card > dealer_first_card + dealer_second_card
  puts 'あなたの勝ちです!'
elsif player_first_card + player_second_card < dealer_first_card + dealer_second_card
  puts 'ディーラーの勝ちです!'
else
  puts '引き分けです!'
end


puts 'ブラックジャックを終了します。'
