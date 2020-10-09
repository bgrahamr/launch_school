
require "yaml"
MESSAGES = YAML.load_file('loan_calc_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_num?(num)
  (integer?(num) || float?(num)) \
  && num.to_f >= 0
end

def get_input(message, error_message)
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
  
  result
end 

def calc_pmt(principal, rate, term_years)
  a = principal.to_f          # loan amount
  i = (rate.to_f / 100) / 12  # monthly interest rate
  n = term_years.to_f * 12    # term in months
  
  pmt = a * (i / (1 - (1 + i)**(-n)))
  pmt
end



prompt(MESSAGES['welcome'])

loop do
  prompt(MESSAGES['input_start'])
  sleep 2
  
  principal = get_input(MESSAGES['amount_input'], MESSAGES['amount_invalid'])
  rate      = get_input(MESSAGES['rate_input'], MESSAGES['rate_invalid'])
  term      = get_input(MESSAGES['term_input'], MESSAGES['term_invalid'])
  pmt       = calc_pmt(principal, rate, term)
  
  prompt(MESSAGES['processing'])
  sleep 3
  prompt("Your monthly payment will be #{pmt}")
  sleep 3
  
  prompt(MESSAGES['rerun'])
  rerun = gets.chomp
  break unless rerun.downcase.start_with?('y')
  
end

prompt(MESSAGES['farewell'])



  


