
# First Car
car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000
}

p car


# Adding the year
car[:year] = 2003
p car


# Broken Odometer
car.delete(:mileage)
p car


# What color?
puts car[:color]

# Labeled Numbers
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |k, v|
  puts "A #{k} number is #{v}"
end 


# Divided by Two
# originally did numbers.values.map { |n| n / 2 }
# checked hash documentation but should have reviewed Enumerable documentation

half_numbers = numbers.map { |k, v| v / 2 }
p half_numbers


# Low, medium, or high?
low_numbers = numbers.select { |k, v| v < 25 }
p low_numbers


low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers


# Multiple Cars
vehicles = Hash.new
vehicles[:Car] = car
vehicles[:truck] = {
  type: 'pickup',
  color: 'red',
  year: 1998
}

p vehicles

car_arr = Array.new
car.each do |key, value|
  car_arr << [key, value]
end 

p car_arr














