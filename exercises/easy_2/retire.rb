# Practice with having program steps at same level of abstraction

def get_age
  puts "What is your age?"
  age = gets.chomp
  age.to_i
end

def get_retire_age
  puts "At what age would you like to retire?"
  retire_age = gets.chomp
  retire_age.to_i
end

def calc_retire_year(current_year, years_to_retire)
  current_year + years_to_retire
end

def calc_retire_age(age, years_to_retire)
  age + years_to_retire
end

def calc_years_to_retire(age, retire_age)
  retire_age - age
end

def display_retire_year(current_year, years_to_retire)
  retire_year = current_year + years_to_retire
  puts "It's #{current_year}. You will retire in #{retire_year}"
end

def display_years_to_retire(years_to_retire)
  puts "You have only #{years_to_retire} years of work to go!"
end

current_year = 2020
age = get_age
retire_age = get_retire_age
years_to_retire = calc_years_to_retire(age, retire_age)

display_retire_year(current_year, years_to_retire)
display_years_to_retire(years_to_retire)
