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
  left = left - (write * 1000000)      # Subtract off those millions

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

def song(bottles)

  # bottles = englishNumber(bottles)

  while bottles > 2
    puts "#{englishNumber(bottles).capitalize} bottles of beer on the wall,"
    puts "  #{englishNumber(bottles)} bottles of beer."

    bottles -= 1
    puts "Take one down and pass it around,"
    puts "  #{englishNumber(bottles)} more bottles of beer."
    puts
  end

  puts "#{englishNumber(bottles).capitalize} bottles of beer on the wall,"
  puts "  #{englishNumber(bottles)} bottles of beer."

  bottles -= 1
  puts "Take one down and pass it around,"
  puts "  One more bottle of beer."
  puts


  puts "One more bottle of beer on the wall,"
  puts "  one more bottle of beer."
  puts "Take it down and pass it around,"
  puts "  no more bottles of beer."
  puts

  puts "No more bottles of beer on the wall,"
  puts "  no more bottles of beer."
  puts "Go to the store and buy some more,"
  puts "  all new bottles of beer on the wall."
  puts

end


song(99)
