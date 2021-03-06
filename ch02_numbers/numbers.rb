def hours_in_a_year
  puts "#{365 * 24}, or #{366 * 24} for leap years"
end

def minutes_in_a_decade
  puts "#{((10 * 365) + 2) * 24 * 60} or #{((10 * 365) + 3) * 24 * 60},"
  puts "depending on leap years in the particular decade."
end

def age_in_seconds(age)
  puts age * 365 * 24 * 60 * 60
end

hours_in_a_year
minutes_in_a_decade
age_in_seconds(37)

puts
puts "-" * 10
puts

def seconds_to_age(seconds)
  puts seconds / (365 * 24 * 60 * 60)
end

seconds_to_age(1160000000)
