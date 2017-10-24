toc_array = ["Table of Contents", "Chapter 1:  Getting Started", "page 1",
  "Chapter 2:  Numbers", "page 9", "Chapter 3:  Letters",
  "page 13"]

line_width = 60
half_line_width = line_width / 2


puts toc_array.shift.center(line_width)
toc_array.each_slice(2) do |chapter, page|
  puts chapter.ljust(half_line_width) + page.rjust(half_line_width)
end
