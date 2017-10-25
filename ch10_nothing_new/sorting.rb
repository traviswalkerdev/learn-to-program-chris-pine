def sort(some_array)
  puts some_array.sort   # Quality check
  puts
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array == []
    return sorted_array
  end

  smaller = unsorted_array.pop
  working_array = []

  unsorted_array.each do |test_item|
    if test_item < smaller
      working_array.push smaller
      smaller = test_item
    else
      working_array.push test_item
    end
    puts working_array.inspect   # Watch the process on working_array
  end

  sorted_array.push smaller
  recursive_sort(working_array, sorted_array)
end


puts sort(["cowan", "chive", "veer", "molten", "hilum", "loan"])
