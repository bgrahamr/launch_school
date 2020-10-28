def xor?(exp1, exp2)
  (exp1 || exp2) && !(exp1 && exp2)
end

def xor1?(exp1, exp2)
  !!exp1 != !!exp2
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

puts xor1?(5.even?, 4.even?) == true
puts xor1?(5.odd?, 4.odd?) == true
puts xor1?(5.odd?, 4.even?) == false
puts xor1?(5.even?, 4.odd?) == false