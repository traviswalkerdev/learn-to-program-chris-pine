require "yaml"

test_array = ["Give Quiche a Chance",
              "Mutants Out!",
              "Chameleonic Life-Forms, No Thanks"]

# First part of YAML magic
test_string = test_array.to_yaml

# Kind of like "to_s" and it is a string,
# but it's a YAML description of "test_array"

filename = "RimmerTShirts.txt"

File.open filename, "w" do |f|
  f.write test_string
end

read_string = File.read filename


# Second part of YAML magic
read_array = YAML::load(read_string)

puts(read_string == test_string)
puts(read_array == test_array)
