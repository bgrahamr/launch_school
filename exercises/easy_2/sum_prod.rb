def get_int
  puts "Please enter an integer greater than 0:"
  int = gets.chomp
  int.to_i
end

def get_operation
  puts "Enter 's' to compute the sum, 'p' to compute the product:"
  operation = gets.chomp
  operation.downcase
end

def perform_op(num, operation)
  operation = operation == 's' ? '+'.to_sym : '*'.to_sym
  (1..num).to_a.reduce(operation)
end

def display_result(num, operation)
  result = perform_op(num, operation)
  op_str = operation == 's' ? 'sum' : 'product'
  puts "The #{op_str} of integers 1 to #{num} is #{result}"
end
  
number = get_int
operation = get_operation
display_result(number, operation)
