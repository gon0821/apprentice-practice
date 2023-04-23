class Hand
  def calculate_score(cards)
    score = 0
    aces = 0

    cards.each do |card|
      if card.score == 1
        aces += 1
        score += 11
      else
        score += card.score
      end
    end

    while score > 21 && aces > 0
      score -= 10
      aces -= 1
    end
    score
  end

  def busted?(cards)
    calculate_score(cards) > 21
  end

  def judge(player_cards, dealer_cards)
    if player_win?(player_cards, dealer_cards)
      'あなたの勝ちです!'
    elsif dealer_win?(player_cards, dealer_cards)
      'ディーラーの勝ちです!'
    else
      '引き分けです!'
    end
  end

  def player_win?(player_cards, dealer_cards)
    player_score = calculate_score(player_cards)
    dealer_score = calculate_score(dealer_cards)
    player_score <= 21 && (dealer_score > 21 || player_score > dealer_score)
  end

  def dealer_win?(player_cards, dealer_cards)
    player_score = calculate_score(player_cards)
    dealer_score = calculate_score(dealer_cards)
    dealer_score <= 21 && (player_score > 21 || dealer_score > player_score)
  end

end
