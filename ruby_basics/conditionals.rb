
# Unpredictable Weather (part 1)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible'


# Unpredictable Weather (part 2)
sun = ['visible', 'hidden'].sample
puts "The clouds are blocking the sun!" unless sun == 'visible'


# Unpredictable Weather (part 3)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'


# True of False
boolean = [true, false].sample
puts boolean ? "I'm true!" : "I'm false!"


# Stoplight (part 1)
stoplight = ['green', 'yellow', 'red'].sample

puts (case stoplight
      when 'green' then 'Go!'
      when 'yellow' then 'Slow down!'
      else 'Stop!'
      end)


# Stoplight (part 2)
stoplight = ['green', 'yellow', 'red'].sample

puts (if stoplight == 'green'
        'Go!'
      elsif stoplight == 'yellow'
        'Slow down!'
      else
        'Stop!'
      end)
      

# Sleep Alert
status = ['awake', 'tired'].sample

alert = if status == 'awake'
          'Be productive!'
        else
          'Go to sleep!'
        end

puts alert


# Cool numbers
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end


# Stoplight (part 3)
stoplight = ['green', 'yellow', 'red'].sample

puts (case stoplight
      when 'green' then 'Go!'
      when 'yellow' then 'Slow down!'
      else 'Stop!'
      end)





