
# Reading Error Messages
# Error notes to many arguments; a single array should be passed

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
find_first_nonzero_among([1])


# Weather forecast
# sunshine is sampling from an array of strings, which when evaluated by conditional will
# always evaluate to true. Changed to boolean values. 

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather 


# Multiply by Five
# The user input is a string but needs to be converted to an integer (or other number)

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"


# Pets
# Code is reassigning the value of :dog with 'bowser'; new pet should be append to the value

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets 


# Even numbers
# Use .select method instead of .map, .map will return for return nil values for odd numbers
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]


# Confucius Says
# Every if statement will be evaluated, unless the 'Einstein' is passed
# the method with return null value. Can fix by fixing conditional statement

def get_quote(person)
  case person
  when 'Yoda'
    'Do. Or do not. There is no try.'
  when 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  when 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'


# Account Balance
# balance is being reassigned to the return value of the calculate_balance method.
# To fix, cause the .each block to increment balance with +=

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance


# Colorful Things
=begin
Two things: length of things is less than colors; would change break condition to 
things.length. Would also change comparison operator to >= since > would cause loop to run
when i is the length of things, but since arrays are zero indexed, the length of the array
would be an index that does not exist in the array.
=end 

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i == things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


# Digit Product
# Product variable should be initialized with value of 1

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0


# Warriors and Wizards
# Need to convert user input to a symbol

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge(character_classes[input])

puts 'Your character stats:'
puts player





















