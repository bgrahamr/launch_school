
#Create a string
str = String.new


# Quote Confusion
puts "It's now 12 o'clock."


# Ignoring Case
name = 'Roger'
puts name.casecmp('RoGeR') == 0 ? true : false
puts name.casecmp('DAVE') == 0 ? true : false


# Dynamic String
name = 'Elizabeth'
puts "Hello, #{name}!"


# Combining Names
first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"

puts full_name


# Tricky Formatting
state = 'tExAs'
state.capitalize!

puts state


#Goodbye, not Hello
greeting = 'Hello!'
puts greeting

greeting.gsub!('Hello', 'Goodbye')
puts greeting


# Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')


# Pluralize
words = 'car human elephant airplane'
words.split(' ').each do |word|
                   puts word + 's'
                 end 


# Are you there?
colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')








