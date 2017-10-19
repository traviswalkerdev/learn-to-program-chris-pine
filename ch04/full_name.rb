# User entered full name

puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp

puts "So your full name is #{first.capitalize} #{middle.capitalize} #{last.capitalize}."
