def print_capitals(capitals)
  capitals.each do |country, capital|
    puts "#{country}の首都は#{capital}です"
  end
end

capitals = {
  :japan => 'Tokyo',
  :us => 'Washington',
}

print_capitals(capitals)
