
# New Pet
pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]
puts "I have a pet #{my_pet}!"


# More than one
my_pets = [pets[2], pets[3]]
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"

my_pets = pets[2..3] #more concise; cleaner
p my_pets


# Free the Lizard
my_pets.pop
puts "I have a pet #{my_pets.first}!"


# One isn't enough
my_pets << pets[1]
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"


# What color are you?
colors = ['red', 'yellow', 'purple', 'green']
colors.each do |color|
  puts "I'm the color #{color}!"
end 


# Doubled
numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |num| num * 2 }
p doubled_numbers


# Divisible by Three
numbers = [5, 9, 21, 26, 39]

divisible_by_3 = numbers.select { |n| n % 3 == 0 }
p divisible_by_3


# Favorite number (part 2)

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
p favorites.flatten


# Are we the same?
array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2







