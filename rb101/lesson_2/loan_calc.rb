# Program calculates and prints monthly loan payments
# given loan amount, rate, and term from user

require "yaml"
MESSAGES = YAML.load_file('loan_calc_messages.yml')

# Formats output messages
def prompt(message)
  puts "=> #{message}"
end

# Checks if string input is an integer
def integer?(num)
  num.to_i.to_s == num
end

# Checks if string input is a float
def float?(num)
  num.to_f.to_s == num
end

# Checks if string input is a positive integer or float
def valid_num?(num)
  (integer?(num) || float?(num)) \
  && num.to_f > 0
end

# Prompts user for valid number and returns user input when valid
def loan_input(message, error_message)
  result = nil

  loop do
    prompt(message)
    input = gets.chomp

    if valid_num?(input)
      result = input
      break
    else
      prompt(error_message)
    end
  end

  system('clear')
  result
end

# Calculates monthly payment
def calc_pmt(principal, rate, term_years)
  a = principal.to_f          # loan amount
  i = (rate.to_f / 100) / 12  # monthly interest rate
  n = term_years.to_f * 12    # term in months

  pmt = a * (i / (1 - (1 + i)**(-n)))
  pmt
end

# Greet User
system('clear')
prompt(MESSAGES['welcome'])
sleep 2

# Main loop; runs through monthly payment calculations until user opts out
loop do
  system('clear')
  prompt(MESSAGES['input_start'])
  sleep 2

  principal = loan_input(MESSAGES['amount_input'], MESSAGES['amount_invalid'])
  rate      = loan_input(MESSAGES['rate_input'], MESSAGES['rate_invalid'])
  term      = loan_input(MESSAGES['term_input'], MESSAGES['term_invalid'])
  pmt       = calc_pmt(principal, rate, term)

  prompt(MESSAGES['processing'])
  sleep 3
  prompt("Your monthly payment will be $#{format('%.2f', pmt)}")
  sleep 3

  prompt(MESSAGES['rerun'])
  rerun = gets.chomp
  break unless %w(y yes).include?(rerun.downcase)
end

system('clear')
prompt(MESSAGES['farewell'])
