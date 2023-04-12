# 1---------------------------
def print_names(names)
  names.each.with_index(1) {|name,i| puts "#{i}.#{name}"}
end
print_names(['上田', '田中', '堀田'])

# 2----------------------------
def square(numbers)
  squares = numbers.map {|number| number ** 2}
  p squares
end
square([49,8,72])

# 3------------------------------
def select_even_numbers(numbers)
  numbers.select {|number| number.even?}
end

even_numbers = select_even_numbers([1,35,2,7,4,31,6,9,8,29,10,21])
print even_numbers

# end---------------------------------
