def area(x,y)
  if 1 <= x && x <= 100 && 1 <= y && y <= 100
    puts x * y / 2
  else
    puts '1cm以上かつ100cm以下の値を入力してください'
  end
end

area(300,40)
