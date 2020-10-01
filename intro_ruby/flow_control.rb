
#exercise 1:
puts "exercise 1:"
puts "see comments"

=begin
1. false
2. false
3. false
4. true
5. true
=end


#exercise 2:
puts ""
puts "exercise 2:"

def long_cap(str)
  str.length > 10 ? str.upcase : str
end

puts long_cap("this is a really long...")
puts long_cap('test')


#exercise 3:
puts ""
puts "exercise 3:"

def num_range()
  puts "Enter a number between 0 and 100: "
  num = gets.chomp.to_f
  
  case
  when (0..50).cover?(num)
    puts "That number is between 0 and 50!"
  when (50..100).cover?(num)
    puts "That number is between 50 and 100!"
  else
    puts "That number is not between 0 and 100!"
  end
end

num_range()
num_range()
num_range()
num_range()
num_range()


#exercise 4:
puts ""
puts "exercise 4:"
puts "see comments"

=begin
1. 'FALSE'
2. 'Did you get it right?'
3. 'Alright now!'
=end


#exercise 5:
puts ""
puts "exercise 5:"
puts "see comments"

# There is only one 'end' keyword when there should be two: one for the conditional statement and one for the method definition. 
# The interpreter is expecting an end for the method definition but there isn't one; hence the error. 