# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

puts greeting

# Initial response:
# Will raise an error; uninitialized variable; iniitalization of greeting is conditional;
# however, since the conditional will always evaluate to false, greeting will never be
# initialized. If false were changed to true, greeting would be assigned to 'hello world'.

# Actual Result:
# variable initialized in an if block are initialized to nil, regardless if the expression
# is evaluated.