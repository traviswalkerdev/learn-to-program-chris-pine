# 99 bottles

def song
  bottles = 99
  while bottles > 2
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    bottles -= 1
    puts "Take one down and pass it around, #{bottles} more bottles of beer."
  end

  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
  bottles -= 1
  puts "Take one down and pass it around, #{bottles} more bottle of beer."

  puts "1 more bottle of beer on the wall, 1 more bottle of beer."
  puts "Take it down and pass it around, no more bottles of beer."

  puts "No more bottle of beer on the wall, no more bottles of beer."
  puts "Go to the store and buy some more, 99 bottles of beer on the wall."

end


song
