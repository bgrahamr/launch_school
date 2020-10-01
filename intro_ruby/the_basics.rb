
# exercise 1
first = "Brad"
last = "Graham"
full = "#{first} #{last}"

puts "exercise 1:"
puts full


#exercise 2
n = 7532

thousands = n / 1000
hundreds = (n / 100) % 10
tens = (n / 10) % 10
ones = n % 10

puts ''
puts 'exercise 2:'
puts thousands
puts hundreds
puts tens
puts ones

#exercise 3:
movies = {
  "Fellowship of the Ring" => 2001,
  "The Two Towers" => 2002,
  "The Return of the King" => 2003
}

puts ''
puts 'exercise 3:'
puts movies.each_value { |year| puts year }


#exercise 4:
puts ""
puts "exercise 4:"

movie_years = movies.values
movie_years.each { |year| puts year }


#exercise 5:
puts ""
puts "exercise 5:"

fact_5 = 5 * 4 * 3 * 2 * 1
fact_6 = 6 * fact_5
fact_7 = 7 * fact_6
fact_8 = 8 * fact_7

puts fact_5
puts fact_6
puts fact_7
puts fact_8


#exercise 6:
puts ""
puts 'exercise 6:'

puts 5 ** 2
puts 6 ** 2
puts 7 ** 2


#exercise 7:
#Error caused by closing parenthesis when a bracket was expected; may have mistakenly closed a block with a ")"
