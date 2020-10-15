# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# 1. what is != and where should you use it?
# 2. put ! before something, like !user_name
# 3. put ! after something, like words.uniq!
# 4. put ? before something
# 5. put ? after something
# 6. put !! before something, like !!user_name

# 1. != is 'not equal to' and it goes in conditional or boolean statements
# 2. ! is 'not' and it will return the opposite boolean value of the object or expression upon which it is called
# 3. ! after a word is often used to denote method tha mutate the caller; words.uniq! would mutate the words array
# 4. ? before something, usually demarcates predicate from the true expression in a ternary conditional
# 5. ? comes after a conditional predicate in a ternary conditional
# 6. !! returns the truthy or falsey value of an object or expression
