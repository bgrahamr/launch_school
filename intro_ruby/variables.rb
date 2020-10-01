
#exercise 1:
puts 'exercise 1:'

puts "Please enter your name: "
name = gets.chomp

puts "Hello, #{name}!"


#exercise 2:
puts ""
puts "exercise 2: "

puts "How old are you? "
age = gets.chomp.to_i

puts "You will be #{age + 10} in 10 years!"
puts "You will be #{age + 20} in 20 years!"
puts "You will be #{age + 30} in 30 years!"
puts "You will be #{age + 40} in 40 years!"


#exercise 3:
puts ""
puts "exercise 3: "

10.times { puts name }


#exercise 4:
puts ""
puts "exercise 4: "

puts "What is your first name? "
first_name = gets.chomp

puts "What is your last name? "
last_name = gets.chomp

puts "#{first_name} #{last_name}"


#exercise 5:
# first program with print "3" to screen

=begin The second program with throw an error. The variable x is initialized within the inner scope of the .times method
block. The variable is not available to the scope outside of the method's inner block, and, since no variable x is defined or
available to the scope wherein x is referenced, an error with be generated. 
=end 
