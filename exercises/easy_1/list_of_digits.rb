def digit_list(int)
  int.digits.reverse
end

p digit_list(23)
p digit_list(0)
p digit_list(250165468)
p digit_list(100)
p digit_list(101)

def digit_list2(int)
  str_int = int.to_s
  list = str_int.chars.map do |n|
    n.to_i
  end
  
  list
end

p digit_list2(23)
p digit_list2(0)
p digit_list2(250165468)
p digit_list2(100)
p digit_list2(101)