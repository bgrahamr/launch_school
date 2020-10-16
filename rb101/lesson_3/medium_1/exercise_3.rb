# Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  factors = []
  return factors if number <= 0
  
  1.upto(number) do |divisor|
    factors << divisor if number % divisor == 0
  end
  factors
end

p factors(100)
# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. 
# How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 
# or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into 
# an infinite loop.

# Bonus 1
# What is the purpose of the number % divisor == 0 ?
# To test whether the remainder of is 0; ie, whether divisor is a factor
# (note that % is not the same as remainder though behaves the same with postive numbers)

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# return the array of factors