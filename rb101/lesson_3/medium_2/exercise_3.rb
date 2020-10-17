# Let's call a method, and pass both a string and an array as arguments and
# see how even though they are treated in the same way by Ruby, the results 
# can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # => 'pumpkins'; a_sting_param initially points to 'pumpkins' but is then reassigned
puts "My array looks like this now: #{my_array}" # => ['pumpkins', 'rutabaga']; array_param points to ['pumpkins']; << mutates the caller