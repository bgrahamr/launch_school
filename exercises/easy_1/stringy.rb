def stringy(num)
  bin_str = ''

  num.times do |count|
    bin_str << (count.even? ? '1' : '0')
  end

  bin_str
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)