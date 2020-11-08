def integer_to_string(int)
  int.digits.reverse.join
end

def integer_to_signed_string(int)
  int_str = integer_to_string(int)
  int_str.prepend('+') if int > 0
  
  int_str
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'