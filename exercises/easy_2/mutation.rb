array1 = %w[Moe Larry Curly Shemp Harpo Chico Groucho Zeppo]          # initiates array of strings
array2 = []                                                           # initiates empty array
array1.each { |value| array2 << value }                               # appends references to string objects in array1 to array2; content of arrays reference same objects
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }  # mutatas referenced string objects meeting condition
puts array2                                                           # 'Moe' 'Larry' 'CURLY' 'SHEMP' 'Harpo' 'CHICO' 'Groucho' 'Zeppo'
