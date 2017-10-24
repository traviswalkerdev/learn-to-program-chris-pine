puts "What is your first name?"
first = gets.chomp.capitalize
puts "What is your middle name?"
middle = gets.chomp.capitalize
puts "What is your last name?"
last = gets.chomp.capitalize

letters = first.length + middle.length + last.length

puts "Did you know there are #{letters.to_s} letters in your name,
     #{first} #{middle} #{last}?"
