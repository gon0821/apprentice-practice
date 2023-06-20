CONVERT = {
  11 => 'J',
  12 => 'Q',
  13 => 'K',
}

MARK = ['スペード', 'クローバー', 'ハート', 'ダイヤ']

puts 'ブラックジャックを開始します。'

#カードを取得
#プレイヤー側　1枚目
player_first = rand(1..13)
if player_first > 10
  player_first_card = CONVERT[player_first]
  player_first = 10
else
  player_first_card = player_first
end

puts "あなたの引いたカードは#{MARK.sample}の#{player_first_card}です。"

#プレイヤー側　2枚目
player_second = rand(1..13)
if player_second > 10
  player_second_card = CONVERT[player_second]
  player_second = 10
else
  player_second_card = player_second
end

puts "あなたの引いたカードは#{MARK.sample}の#{player_second_card}です。"

# ディーラー側 1枚目
dealer_first = rand(1..13)
if dealer_first > 10
  dealer_first_card = CONVERT[dealer_first]
  dealer_first = 10
else
  dealer_first_card = dealer_first
end

puts "ディーラーの引いたカードは#{MARK.sample}の#{dealer_first_card}です。"
puts "ディーラーの引いた2枚目のカードは分からないようになっています。"

# プレイヤー側 3枚目以降
player_sum = player_first + player_second

puts "あなたの現在の得点は#{player_sum}です。カードを引きますか？(Y/N) → "
input = gets.chomp.upcase


if input == 'Y'
  while input == 'Y'
    player_add = rand(1..13)
    if player_add > 10
      player_add_card = CONVERT[player_add]
      player_add = 10
    else
      player_add_card = player_add
    end

    puts "あなたの追加で引いたカードは#{MARK.sample}の#{player_add_card}です。"
    player_sum += player_add
    if player_sum > 21
      puts "あなたの得点が#{player_sum}となり21を超えたため、ディーラーの勝ちです!"
      puts "ブラックジャックを終了します。"
      exit
    end

    puts "あなたの現在の得点は#{player_sum}です。カードを引きますか？(Y/N) → "
    input = gets.chomp.upcase
  end

elsif input == 'N'
  puts 'あなたの番を終了します。'
else
  puts '「Y」または「N」を入力してください。'
end


puts ''

# ディーラー側 2枚目
dealer_second = rand(1..13)
if dealer_second > 10
  dealer_second_card = CONVERT[dealer_second]
  dealer_second = 10
else
  dealer_second_card = dealer_second
end

puts "ディーラーの引いた2枚目のカードは#{MARK.sample}の#{dealer_second_card}でした。"

dealer_sum = dealer_first + dealer_second
puts "ディーラーの現在の得点は#{dealer_sum}です。"

# ディーラー側 3枚目以降
while dealer_sum < 17
  dealer_add = rand(1..13)
  if dealer_add > 10
    dealer_add_card = CONVERT[dealer_add]
    dealer_add = 10
  else
    dealer_add_card = dealer_add
  end
  dealer_sum += dealer_add
  puts "ディーラーが追加で引いたカードは#{MARK.sample}の#{dealer_add_card}です。"
end

#カードの取得地を判定
puts "あなたの得点は#{player_sum}です。"
puts "ディーラーの得点は#{dealer_sum}です。"

if player_sum > dealer_sum || 21 < dealer_sum
  puts 'あなたの勝ちです!'
elsif player_sum < dealer_sum
  puts 'ディーラーの勝ちです!'
else
  puts '引き分けです!'
end

puts 'ブラックジャックを終了します。'
