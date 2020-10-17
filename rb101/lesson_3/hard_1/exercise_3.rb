# In other practice problems, we have looked at how the scope of variables affects
# the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of one scope
# by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => 'one'
puts "two is: #{two}" # => 'two'
puts "three is: #{three}" # => 'three'
# variables are passed to mess_with_vars, but the variables within the method
# are reassigned, which does not mutate the caller. 


# B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => 'one'
puts "two is: #{two}" # => 'two'
puts "three is: #{three}" # => 'three'
# variables are passed to mess_with_vars, but the variables within the method
# are reassigned, which does not mutate the caller. 

# C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => 'two'
puts "two is: #{two}" # => 'three'
puts "three is: #{three}" # => 'one'
# variables are passed to mess_with_vars, the method parameters point to reference
# the objects passed as arguments. The .gsub! is a destructive method, and the 
# the objects are mutated. 