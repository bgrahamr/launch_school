# Depending on a method to modify its arguments can be tricky:

# refactored to be desctructive
def tricky_method(param)
  param << 'rutabaga'
end

# non-destructive
def other_tricky_method(str_param, array_param)
  str_param += 'rutabaga'
  array_param += ['rutabaga']
  
  return str_param, array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string)
tricky_method(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = other_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted 
# "depends" upon what is going on inside the method.

# How can we refactor this practice problem to make the result easier
# to predict and easier for the next programmer to maintain?