# Program 1
name = 'Bob'          # initializes name variable pointing to string object with value 'Bob'
save_name = name      # initializes save_name variable pointing to same string object as name
name = 'Alice'        # reassignment of name variable to new string object (value 'Alice'); save_name still point to 'Bob'
puts name, save_name  # => 'Alice' 'Bob'

#Program 2
name = 'Bob'          # initializes name variable pointing to string object with value 'Bob'
save_name = name      # initializes save_name variable pointing to same string object as name
name.upcase!          # .upcase! mutates the caller changing value to 'BOB'; both variables point to this object
puts name, save_name  # => 'BOB' 'BOB'