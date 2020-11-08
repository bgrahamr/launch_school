require 'pry'

DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def string_to_integer(num_str)
  num = 0
  arr = num_str.chars
  
  while arr.size > 0
    digit = DIGITS.index(arr.shift)
    magnitude = 10 ** arr.size
    num += (digit * magnitude)
  end
  
  num
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570