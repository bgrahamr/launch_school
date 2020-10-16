# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
# A user passes in two numbers, and the calculator will keep computing the 
# sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he 
# got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num, lim)
  while first_num + second_num < lim
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
# How would you fix this so that it works?

# Ruby method definition create their own scope and variables not initiated within
# or passed to the method are not visible to the body of the method. To fix, initiate the limit
# variable within the method definition or pass the limit as an argument