def reverse_words(str)
  arr = str.split.map do |word|
    word.length >= 5 ? word.reverse : word
  end
  
  arr.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

