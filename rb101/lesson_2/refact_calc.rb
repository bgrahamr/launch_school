# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num_str)
  num_str.to_i != 0
end

prompt("Welcome to Calculator! Enter your name:")
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure you enter your name.")
  else
    break
  end
end

loop do # main loop
  num1 = ''
  num2 = ''

  loop do
    prompt("What's the first number?")
    num1 = gets.chomp
    if valid_number?(num1)
      break
    else
      prompt("That doesn't look like a valid number...")
    end
  end

  loop do
    prompt("What's the second number?")
    num2 = gets.chomp
    if valid_number?(num2)
      break
    else
      prompt("That doesn't look like a valid number...")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
    MSG

  prompt(operator_prompt)
  operator = ''

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(<<-MSG
      Please enter a valid operation: 
      1) add 
      2) subtract 
      3) multiply 4) 
      divide"
      MSG
            )
    end
  end

  result = case operator
           when '1' then num1.to_i + num2.to_i
           when '2' then num1.to_i - num2.to_i
           when '3' then num1.to_i * num2.to_i
           else          num1.to_f / num2.to_f
           end

  prompt("The result is #{result}")

  prompt("Would you like to perform another calculation? (Y to continue)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using calculator!")
