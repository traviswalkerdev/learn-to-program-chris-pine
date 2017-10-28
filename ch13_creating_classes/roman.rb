class Integer

  def modern_roman_numeral
    roman_string = ""

    hundreds = (self % 1000 / 100)
    tens = (self % 100 / 10)
    ones = (self % 10)


    roman_string << "M" * (self / 1000)

    if hundreds == 9
      roman_string << "CM"
    elsif hundreds == 4
      roman_string << "CD"
    else
      roman_string << "D" * (self % 1000 / 500)
      roman_string << "C" * (self % 500 / 100)
    end

    if tens == 9
      roman_string << "XC"
    elsif tens == 4
      roman_string << "XL"
    else
      roman_string << "L" * (self % 100 / 50)
      roman_string << "X" * (self % 50 / 10)
    end

    if ones == 9
      roman_string << "IX"
    elsif ones == 4
      roman_string << "IV"
    else
      roman_string << "V" * (self % 10 / 5)
      roman_string << "I" * (self % 5)
    end


    puts roman_string
  end

end


puts
puts "Modern Style Roman Numerals"
puts
1980.modern_roman_numeral
1998.modern_roman_numeral
2017.modern_roman_numeral
52.modern_roman_numeral
594.modern_roman_numeral
puts
