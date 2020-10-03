
# repeat after me

puts '>> Type anything you want: '
user_input = gets.chomp

puts user_input


# your age in months

puts "What is your age in years?"
age = gets.chomp.to_i
puts "You are #{age * 12} months old!"


# print something (part 1)

puts ">> Do you want me to print something? (y/n)"
response = gets.chomp

puts 'something' if response.downcase == 'y'


# print something (part 2)

input = nil
  
loop do 
  puts ">> Do you want me to print something? (y/n)"
  input = gets.chomp.downcase
  break if %w(y n).include?(input)
  puts ">> Invalid input. Please enter y or n."
end 

puts 'something' if input == 'y'


# launch school printer (part 1)

lines = nil

loop do
  puts ">> How many times would you like me to repeat myself? (at least 3 times!)"
  lines = gets.chomp.to_i
  break if lines > 3
  puts "I want to say it at least 3 times!"
end 

lines.times { puts "Launch is the best!" }


# passwords

PASSWORD = 'goodpassword'

loop do
  puts 'Please enter the secret password:'
  attempt = gets.chomp
  break if attempt == PASSWORD
  puts "Ah, ah, ah...you didn't say the magic word..."
end 

puts 'Welcome!'


# Username and password

USERNAME = 'D_Nedry'
PASSWORD = 'DNA$$$'

loop do
  puts 'Please enter username:'
  un_attempt = gets.chomp
  
  puts 'Please enter the secret password:'
  pw_attempt = gets.chomp
  
  break if un_attempt == USERNAME && pw_attempt == PASSWORD
  puts "Ah, ah, ah...you didn't say the magic word..."
end 

puts 'Welcome!'


# dividing numbers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter a numerator (integer):"
  numerator = gets.chomp
  
  break if valid_number?(numerator)
  puts "Invalid input"
end

loop do
  puts ">> Please enter a denominator (a non-zero integer):"
  denominator = gets.chomp
  
  if denominator.to_i == 0
    puts "The number must not be zero."
    next
  elsif valid_number?(denominator)
    break
  end 
  
  puts "Invalid input"
end

answer = numerator.to_f / denominator.to_i
puts "#{numerator} / #{denominator} is #{answer}"


# launch school printer (part 2)

lines = nil

loop do
  puts ">> How many times would you like me to repeat myself? ('Q' or 'q' to quit)"
  lines = gets.chomp
  
  if lines.downcase == 'q'
    break
  elsif lines.to_i < 3
    puts "I want to say it at least 3 times!"
    next
  end 
  
  lines.to_i.times { puts "Launch is the best!" }
end 


# Opposites attract

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def valid_pair?(x, y)
  return (x * y) < 0
end

def get_int()
  num = nil
  
  loop do
    puts ">> Please enter a non-zero integer:"
    num = gets.chomp
    
    break if valid_number?(num)
    puts "Not a valid number"
  end
  
  num.to_i
end

num1 = nil
num2 = nil

loop do 
  num1 = get_int()
  num2 = get_int()
  
  break if valid_pair?(num1, num2)
  puts "Sorry, one integer must positive and the other negative."
end 

sum = num1 + num2
puts "#{num1} + #{num2} = #{sum}"

  











