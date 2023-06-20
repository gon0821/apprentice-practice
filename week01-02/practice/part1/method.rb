CONVERT = {
  11 => 'J',
  12 => 'Q',
  13 => 'K',
}

MARK = ['スペード', 'クローバー', 'ハート', 'ダイヤ']

def get_card()
    player = rand(1..13)
  if player > 10
    player_card = CONVERT[player]
    player_num = 10
  else
    player_card = player
    player_num = player_first
  end

  player_first_mark = MARK.sample
end
