def hours_in_a_year
  puts 365 * 24
end

def minutes_in_a_decade
  puts 10 * 365 * 24 * 60
end

def age_in_seconds(age)
  puts age * 365 * 24 * 60 * 60
end

hours_in_a_year
minutes_in_a_decade
age_in_seconds(37)

puts "-" * 10

def convert_seconds_to_years(seconds)
  puts seconds / 60 / 60 / 24 / 365
end

convert_seconds_to_years(1298000000)
