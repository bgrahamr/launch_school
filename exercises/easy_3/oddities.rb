def oddities(arr)
  result = []
  arr.each_with_index do |element, idx|
    result << element if idx.even?
  end
  
  result
end

def evenies(arr)
  result = []
  arr.each_with_index do |element, idx|
    result << element if idx.odd?
  end
  
  result
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts evenies([2, 3, 4, 5, 6]) == [3, 5]
puts evenies([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts evenies(['abc', 'def']) == ['def']
puts evenies([123]) == []
puts evenies([]) == []