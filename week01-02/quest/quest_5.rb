def greater(x,y)
  if x > y
    puts 'x > y'
  elsif x < y
    puts 'x < y'
  else
    puts 'x == y'
  end
end

greater(100, 50)
greater(43, 44)
greater(18, 18)

def train_fare(age)
  if 0 <= age && age <= 150
      if 12 <= age
        puts 200
      elsif 6 <= age
        puts 100
      else
        puts 0
      end
  else
    puts '0以上150以下の数値を入力してください'
  end
end

train_fare(12)
train_fare(6)
train_fare(5)
train_fare(151)
train_fare(-1)

def xor(x,y)
  if x == true && y == false
    puts true
  elsif x == false && y == true
    puts true
  elsif x == true && y == true
    puts false
  elsif x == false && y == false
    puts false
  end
end

xor(true, false)
xor(false, true)
xor(true, true)
xor(false, false)
