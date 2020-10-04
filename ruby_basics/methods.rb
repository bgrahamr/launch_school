
# # print me

# def print_me()
#   puts "I'm printing within the method!"
# end 

# print_me 


# # print me part 2

# def print_me()
#   "I'm printing within the method!"
# end 

# puts print_me 


# # Greeting Through Methods (Part 1)

# def hello()
#   "Hello"
# end

# def world()
#   "World"
# end 

# puts "#{hello} #{world}"


# # Greeting Through Methods (Part 2)

# def greeting()
#   "#{hello} #{world}"
# end 

# puts greeting


# # Make and Model

# def car(make, model)
#   puts "#{make} #{model}"
# end 

# car('Toyota', 'Corolla')


# # Day or Night?

# def time_of_day(time)
#   puts time ? "It's daytime!" : "It's nighttime!"
# end 

# daylight = [true, false].sample

# time_of_day(daylight)


# # Naming Animals

# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."


# # Name not Found

# def assign_name(name='Bob')
#   name
# end 

# puts assign_name('Kevin') == 'Kevin'
# puts assign_name == 'Bob'

# # Mulitply the Sum 

# def add(num1, num2)
#   num1 + num2
# end 

# def multiply(num1, num2)
#   num1 * num2
# end 

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36


# # random sentence

# def name(arr)
#   arr.sample
# end 

# def activity(arr)
#   arr.sample
# end 

# def sentence(name, activity)
#   "#{name} went #{activity} today"
# end 

# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# puts sentence(name(names), activity(activities))


