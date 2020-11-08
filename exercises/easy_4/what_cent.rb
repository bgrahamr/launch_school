# take an integer representing a calendar
# return a string representing the century in which the year occurs
# => Needs to end in 'st', 'nd', 'th', etc.
# => Centuries begin with years ending in 01 and end in years ending in 00

# Adding suffix to the century:
# => All teens end in 'th'
# => Else follow the convention of:
# =>  'st' for 1, 'nd' for 2, 'rd' for 3, 'th' for all others

def ends_in_teen?(num)
  num_str = num.to_s
  num_str.size > 1 && num_str[-2] == '1'
end
  
def determine_suffix(num)
  return 'th' if ends_in_teen?(num)
  
  last_digit = num.digits.first
  suffix = (
    case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
    )

  suffix
end

def century(year)
  cent = year / 100
  cent += 1 if (year % 10) > 0

  suffix = determine_suffix(cent)
  cent.to_s + suffix
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
