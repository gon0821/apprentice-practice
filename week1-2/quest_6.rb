def hello
  5.times {puts "こんにちは！"}
end

hello()
# --------------------------------
def sheep(n)
  if 1 <= n && n <= 100
    1.upto(n) do |num|
      puts "羊が#{num}匹"
    end
  else
    puts '1から100までの数値を入力してください'
  end
end

sheep(10)
# -------------------------------------
def sum_1_100
  num = 1
  sum = 0
  while num <= 100
    sum = sum + num
    num = num + 1
  end
  puts sum
end

sum_1_100()
#---------------------------------------
def sum(x,y)
  num = x
  sum = 0
  while num <= y
    sum = sum + num
    num = num + 1
  end
  puts sum
end

sum(11,20)
