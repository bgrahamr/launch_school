# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def operation_to_message(operation)
  output = case operation
           when '1' then 'Adding...'
           when '2' then 'Subtracting...'
           when '3' then 'Multiplying...'
           else          'Dividing...'
           end

  output
end


def valid_number?(num_str)
  num_str.to_i.to_s == num_str || \
  num_str.to_f.to_s == num_str
end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do # main loop
  num1 = ''
  num2 = ''

  loop do
    prompt(MESSAGES['first_num'])
    num1 = gets.chomp
    if valid_number?(num1)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  loop do
    prompt(MESSAGES['second_num'])
    num2 = gets.chomp
    if valid_number?(num2)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  prompt(MESSAGES['operator_prompt'])
  operator = ''

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operation'])
    end
  end

  result = case operator
           when '1' then num1.to_f + num2.to_f
           when '2' then num1.to_f - num2.to_f
           when '3' then num1.to_f * num2.to_f
           else          num1.to_f / num2.to_f
           end
  
  prompt(operation_to_message(operator))
  prompt("The result is #{result}")

  prompt(MESSAGES['rerun'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['farewell'])

