puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

now = Time.new
birthday = Time.mktime(year, month ,day)

if now.yday - birthday.yday < 0
  years = (now.year - birthday.year) - 1
else
  years = (now.year - birthday.year)
end

years.times { puts "SPANK!" }
