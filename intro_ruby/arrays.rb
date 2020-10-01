
#exercise 1
puts 'exercise 1:'

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)


#exercise 2
puts ""
puts 'exercise 2:'
puts 'see comments'

=begin
1. 1
2. [ 1, 2, 3]
=end


#exercise 3
puts ""
puts 'exercise 3:'

arr = [['test', 'hello', 'world'], ['example', 'mem']]
puts arr.last.first


#exercise 4
puts ""
puts 'exercise 4:'
puts 'see comments'

=begin
1. 3
2. error
3. 8
=end


#exercise 5
puts ""
puts 'exercise 5:'
puts 'see comments'

=begin
1. 'e'
2. 'A'
3. nil
=end


#exercise 6
puts ""
puts 'exercise 6:'
puts 'see comments'

=begin
Appears the user is trying to replace the value 'margaret' with 'jody', by references the value instead of the index.
Can be fixed by replacing 'margaret' with the index: names[3] = 'jody'
=end


#exercise 7
puts ""
puts 'exercise 7:'

arr = [0, 1, 4, 9, 16, 25]
arr.each_with_index do |val, idx|
  puts "#{idx} squared is #{val}"
end


#exercise 8
puts ""
puts 'exercise 8:'

new_arr = arr.map { |x| x + 2 }

p "Original array: #{arr}"
p "New array: #{new_arr}"




