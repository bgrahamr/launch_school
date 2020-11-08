require 'pry'

DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def is_neg?(num_str)
  num_str[0] == '-'
end

def string_to_integer(num_str)
  num = 0
  arr = num_str.chars
  
  while arr.size > 0
    digit = DIGITS.index(arr.shift)
    next if digit.nil?
    
    magnitude = 10 ** arr.size
    num += (digit * magnitude)
  end

  num
end

def string_to_signed_integer(num_str)
  abs_val = string_to_integer(num_str)
  
  is_neg?(num_str) ? -abs_val : abs_val
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100