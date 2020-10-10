# Program calculates and prints monthly loan payments
# given loan amount, rate, and term from user

require "yaml"
MESSAGES = YAML.load_file('loan_calc_messages.yml')

# Formats output messages, option to pause program for
# a given number of seconds; option to clear terminal
def prompt(message, sleep_seconds=0, sys_clear=false)
  system('clear') if sys_clear
  puts "=> #{message}"
  sleep(sleep_seconds) if sleep_seconds != 0
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
def loan_input(input_prompt, error_prompt)
  result = nil

  loop do
    prompt(input_prompt)
    input = gets.chomp

    if valid_num?(input)
      result = input
      break
    else
      prompt(error_prompt)
    end
  end

  system('clear')
  result
end

# Calculates monthly payment
def calc_pmt(principal, rate, term_years)
  p = principal.to_f          # loan amount
  i = (rate.to_f / 100) / 12  # monthly interest rate
  n = term_years.to_f * 12    # term in months

  pmt = p * (i / (1 - (1 + i)**(-n)))
  pmt
end

# Greet User
prompt(MESSAGES['welcome'], 2, true)

# Main loop; runs through monthly payment calculations until user opts out
loop do
  # Prepare user for calculation
  prompt(MESSAGES['input_start'], 2, true)

  # Get loan pmt calculation inputs from user and calculate payment
  principal = loan_input(MESSAGES['amount_input'], MESSAGES['amount_invalid'])
  rate      = loan_input(MESSAGES['rate_input'], MESSAGES['rate_invalid'])
  term      = loan_input(MESSAGES['term_input'], MESSAGES['term_invalid'])
  pmt       = calc_pmt(principal, rate, term)

  # Display 'processing' message and display payment to user
  prompt(MESSAGES['processing'], 3, true)
  prompt("Your monthly payment will be $#{format('%.2f', pmt)}", 3, true)

  # Ask user if they would like to do another calculation
  prompt(MESSAGES['rerun'])
  rerun = gets.chomp
  break unless %w(y yes).include?(rerun.downcase)
end

prompt(MESSAGES['farewell'], 2, true)
