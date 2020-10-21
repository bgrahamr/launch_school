# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.


# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

def get_length
  puts "Please enter the length of the room in meters: "
  length = gets.chomp
  length.to_f
end

def get_width
  puts "Please enter the width of the room in meters: "
  width = gets.chomp
  width.to_f
end

def display_area
  length_m = get_length
  width_m = get_width
  conv_fact = 10.7639
  
  area_m = length_m * width_m
  area_ft = area_m * conv_fact
  
  puts "The area of the room is #{area_m} square meters (#{area_ft} square feet)."
end

display_area

