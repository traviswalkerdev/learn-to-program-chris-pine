def old_roman_numeral(number)
  roman_string = ""

  m = 0
  d = 0
  c = 0
  l = 0
  x = 0
  v = 0
  i = 0

  if number >= 1000
    m = number / 1000
    number = number % 1000
  end

  if number >= 500
    d = number / 500
    number = number % 500
  end

  if number >= 100
    c = number / 100
    number = number % 100
  end

  if number >= 50
    l = number / 50
    number = number % 50
  end

  if number >= 10
    x = number / 10
    number = number % 10
  end

  if number >= 5
    v = number / 5
    number = number % 5
  end

  i = number



  roman_string = "M" * m + "D" * d + "C" * c + "L" * l + "X" * x + "V" * v + "I" * i

  puts roman_string
end


puts
puts "Old Style Roman Numerals"
puts
old_roman_numeral(1980)
old_roman_numeral(1998)
old_roman_numeral(2017)
old_roman_numeral(52)
old_roman_numeral(594)
puts
