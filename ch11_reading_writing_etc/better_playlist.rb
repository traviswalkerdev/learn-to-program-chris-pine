# Card Deck Stlye

def music_shuffle(filenames)

  # Sort becuase we don't know starting randomness
  filenames = filenames.sort
  len = filenames.length

  # Now we shuffle twice
  2.times do
    left_index = 0
    right_index = len / 2
    shuffled = []

    while shuffled.length < len
      if shuffled.length % 2 == 0
        # Take a card from the right pile
        shuffled.push(filenames[right_index])
        right_index += 1
      else
        # Take a card from the left pile
        shuffled.push(filenames[left_index])
        left_index += 1
      end
    end

    filenames = shuffled
  end

  # And cut the deck
  arr = []
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[(idx + cut) % len])
    idx += 1
  end

  arr
end

songs = ["aa/bbb", "aa/ccc", "aa/ddd",
         "AAA/xxxx", "AAA/yyyy", "AAA/zzzz", "foo/bar"]

puts music_shuffle(songs)
