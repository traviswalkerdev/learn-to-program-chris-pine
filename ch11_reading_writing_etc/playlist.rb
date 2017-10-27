all_songs = shuffle(Dir['**/*.ogg'])

File.open "playlist.m3u", "w" do |f|
  all_songs.each do |ogg|
    f.write ogg + "\n"
  end
end

puts "Done!"



def shuffle(some_array)
  recursive_shuffle(some_array, [])
end

def recursive_shuffle(starting_array, shuffled_array)
  random_pick = rand(starting_array.length)
  item = starting_array[random_pick]

  while starting_array.length > 0
    shuffled_array << item
    starting_array.delete_at(random_pick)
    recursive_shuffle(starting_array, shuffled_array)
  end

  shuffled_array
end
