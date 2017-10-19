array = []

puts "Enter a word for the array."
input = gets.chomp

while input != ""
  array.push input
  input = gets.chomp
end



array.each_index do |first|
  array.each_index do |second|
    if array[first] < array[second]
      array[first], array[second] = array[second], array[first]
      puts "[#{array.join(', ')}]"
    end
  end
end

puts array
