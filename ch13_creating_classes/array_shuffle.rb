class Array

  def shuffle
    recursive_shuffle(self, [])
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

end

puts ["first", "second", "third", "fourth", "fifth", "sixth"].shuffle
