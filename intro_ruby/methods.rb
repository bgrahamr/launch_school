
#exercise 1:
puts "exercise 1:"

def greeting(name)
  puts "Hello, #{name}"
end 

greeting('Brad')


#exercise 2:
puts ""
puts 'exercise 2:'
puts 'see comments'

#1 - 2
#2 - nil
#3 - nil - missed, p prints then returns the value of the expression being printed
#4 - 'four'
#5 - nil


#exercise 3:
puts ""
puts "exercise 3:"

def multiply(x, y)
  x * y
end 

puts multiply(25, 5)


#exercise 4:
puts ""
puts "exercise 4:"
puts "see comments"

#Will print nothing, return statement is evaluated before puts expression is evaluated

#exercise 5:
puts ""
puts 'exercise 5:'

#return nil

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")


#exercise 6:
puts ""
puts "exercise 6:"
puts "see comments"

#A method requires two args but only one was provided