def roman_to_integer(roman)
  integers = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  total = 0
  prev = 0
  idx = roman.length - 1

  while idx >= 0
    element = roman[idx].upcase
    idx = idx - 1
    value = integers[element]

    if !value
      puts "This is not a valid Roman numeral!"
      return
    end

    if value < prev
      value = value * -1
    else
      prev = value
    end

    total = total + value
    puts total  # Watch the process build
  end

  # total
  puts
end


puts roman_to_integer("mcmxcix")
puts roman_to_integer("CCCLXV")
