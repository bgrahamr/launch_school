def multiple?(num, divisor)
  num % divisor == 0
end

def multisum(upper_limit)
  result = 0
  3.upto(upper_limit) do |num|
    result += num if (multiple?(num, 3) || multiple?(num,5))
  end
  
  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
