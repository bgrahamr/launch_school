vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
  ]

def how_many?(arr)
  arr.uniq.each do |type|
    num = arr.count(type)
    puts "#{type} => #{num}"
  end
end

how_many?(vehicles)

