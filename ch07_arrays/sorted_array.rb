array = []

puts "Enter a word for the array."
input = gets.chomp

while input != ""
  array.push input
  input = gets.chomp
end

puts array.sort
