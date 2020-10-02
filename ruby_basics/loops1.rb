
# runaway loop

loop do
  puts 'Just keep printing...'
  break
end


# loopception

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  
  break
end

puts 'This is outside all loops.'


# control the loop

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations == 5 ? break : iterations += 1
end


# loop on command

loop do
  puts "Should I stop looping (type 'yes')?"
  answer = gets.chomp.downcase
  break if answer == 'yes'
end


# say hello

count = 0

while count < 5
  puts 'Hello!'
  count += 1
end


# Print While

numbers = []

while numbers.length < 5
  numbers << rand(100)
end

p numbers 


# Count Up

count = 1

until count > 10
  puts count
  count += 1
end


# Print Until

numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers.shift
end 


# That's Odd

for i in 1..100
  puts i if i.odd?
end


# Greet your friends

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends
  puts "Hello, #{name}!"
end
