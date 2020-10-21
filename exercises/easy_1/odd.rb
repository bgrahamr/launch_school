def odd?(int)
  int = -int if int < 0
  int % 2 == 1
end

puts odd?(-25)
puts odd?(-18)
puts odd?(0)
puts odd?(1)
puts odd?(2)
puts odd?(45)

