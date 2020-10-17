# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# Initial response before running:
# informal_greeting points to the value :a in the greetings hash. The << operator
# will mutate the caller, or the value of :a, causing greeting to be { :a => 'hi there' }
