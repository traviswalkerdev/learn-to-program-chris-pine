# Leap Year

puts "Leap Year Calculator"
puts ""
puts "Enter a starting year."
starting_year = gets.chomp

puts "Enter and ending year."
ending_year = gets.chomp
puts ""

# first leap year
leap_year = starting_year.to_i + starting_year.to_i % 4

while leap_year.<= ending_year.to_i
  if leap_year % 100 != 0 || leap_year % 400 == 0
    puts leap_year
  end
  leap_year += 4
end
