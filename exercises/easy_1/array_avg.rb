# Write a method that takes one argument, an array containing integers, and 
# returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers. Your result should 
# also be an integer.

def average(arr)
  arr.sum / arr.size
end

def average2(arr)
  arr.sum.to_f / arr.size
end

puts average2([1, 6]) == 3.5
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# The tests above should print true.

