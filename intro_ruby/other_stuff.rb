
#exercise 1
puts 'exercise 1:'

def contains_lab(str)
  puts str if str.downcase =~ /lab/
end 

contains_lab('laboratory')
contains_lab('experiment')
contains_lab('Pans Labyrinth')
contains_lab('elaborate')
contains_lab('polar bear')


#exercise 2
puts ''
puts 'exercise 2:'
puts 'see comments'

# Block is not executed; block is not called within the body of the function, needs .call


#exercise 3
puts ''
puts 'exercise 3:'
puts 'see comments'

=begin
Exception handling is the process of providing a planned response for when exceptions are raised. They allow the 
program to respond and continue running in the event of an exception
=end


#exercise 4
puts ''
puts 'exercise 4:'

def execute(&block)
  block.call
end 

execute { puts 'hello from inside the execute method!' }


#exercise 5
puts ''
puts 'exercise 5:'
puts 'see comments'

# A block is not being passed as there 'block' is not prefixed with an '&'. Block in the definition is a single argument.








