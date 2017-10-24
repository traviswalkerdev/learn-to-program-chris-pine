puts "HI SONNY! NICE TO SEE YOU!!"
response = nil
bye = 0


while bye < 3
  response = gets.chomp
  if response == "BYE"
    puts "..."
    bye += 1
  elsif response != response.upcase
    puts "HUH?!? SPEAK UP, SONNY!!"
  else
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end
end
