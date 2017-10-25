def modern_roman_numeral(number)
  roman_string = ""

  roman_string << "M" * (number / 1000)
  roman_string << "D" * (number % 1000 / 500)
  roman_string << "C" * (number % 500 / 100)
  roman_string << "L" * (number % 100 / 50)
  roman_string << "X" * (number % 50 / 10)
  roman_string << "V" * (number % 10 / 5)
  roman_string << "I" * (number % 5)


  puts roman_string
end


puts
puts "Modern Style Roman Numerals"
puts
modern_roman_numeral(1980)
modern_roman_numeral(1998)
modern_roman_numeral(2017)
modern_roman_numeral(52)
modern_roman_numeral(594)
puts
