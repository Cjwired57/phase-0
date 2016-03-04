puts 'What is your favorite number?'
favorite_number = gets.chomp
better_number = favorite_number.to_i + 1
puts 'Wait your favorite number is '+favorite_number.to_s+'? '+better_number.to_s+' is a way better number!'