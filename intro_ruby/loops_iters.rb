
#exercise 1
puts 'exercise 1:'
puts 'see comments'

# The .each method returns the original array on which the .each method was called


#exercise 2
puts ""
puts 'exercise 2:'

loop do
  puts "Enter an integer: "
  num = gets.chomp.to_i
  puts "That number times 10 is #{num * 10}!"
  
  puts "Type 'STOP' if you'd like to stop: "
  user_input = gets.chomp.upcase
  break if user_input == "STOP"
end 


#exercise 2
puts ""
puts 'exercise 2:'

def countdown(start)
  puts start
  countdown(start - 1) if start > 0
end

countdown(10)

  
