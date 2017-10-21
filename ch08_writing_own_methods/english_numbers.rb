def englishNumber number
  if number < 0   # No negative numbers
    return "please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end



  # No more special cases! No more returns!

  num_string = ""    # this is the string we will return

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight",
                "nine"]

  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy",
                "eighty", "ninety"]

  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
               "seventeen", "eighteen", "nineteen"]



  # "left" is how much of the number we still have left to write out
  # write is the part we are writing right now

  left = number

  # millions
  write = left / 1000000               # How many millions left to write out
  left = left - (write * 1000000)

  if write > 0
    millions = englishNumber write
    num_string = num_string + millions + " million"

    if left > 0
      num_string = num_string + " "
    end
  end



  # thousands
  write = left / 1000                  # How many thousands left to write out
  left = left - (write * 1000)         # Subract off those thousands

  if write > 0
    thousands = englishNumber write
    num_string = num_string + thousands + " thousand"

    if left > 0
      num_string = num_string + " "
    end
  end



  # hundreds
  write = left / 100                   # How many hundreds left to write out
  left = left - (write * 100)          # Subtract off those hundreds

  if write > 0
    num_string = num_string + ones_place[write - 1] + " hundred"

    if left > 0
      num_string = num_string + " "
    end
  end



  # tens
  write = left / 10                    # How many tens left to write out
  left = left - (write * 10)           # Subract off those tens

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      num_string = num_string + teenagers[left - 1]

      # Since we already took care of the digit in the ones place,
      # we have nothing left to write
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end

    if left > 0
      num_string = num_string + "-"
    end
  end



  # ones
  write = left                         # How many ones left to write out
  left = 0                             # Subtract off those ones

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end


  num_string
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(10)
puts englishNumber(11)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
