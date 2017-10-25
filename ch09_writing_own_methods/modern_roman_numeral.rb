def modern_roman_numeral(number)
  roman_string = ""

  hundreds = (number % 1000 / 100)
  tens = (number % 100 / 10)
  ones = (number % 10)


  roman_string << "M" * (number / 1000)

  if hundreds == 9
    roman_string << "CM"
  elsif hundreds == 4
    roman_string << "CD"
  else
    roman_string << "D" * (number % 1000 / 500)
    roman_string << "C" * (number % 500 / 100)
  end

  if tens == 9
    roman_string << "XC"
  elsif tens == 4
    roman_string << "XL"
  else
    roman_string << "L" * (number % 100 / 50)
    roman_string << "X" * (number % 50 / 10)
  end

  if ones == 9
    roman_string << "IX"
  elsif ones == 4
    roman_string << "IV"
  else
    roman_string << "V" * (number % 10 / 5)
    roman_string << "I" * (number % 5)
  end


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
