def get_numbers
  order = %w[1st 2nd 3rd 4th 5th last]
  num_set = []
  
  order.each do |iter|
    puts "Please enter the #{iter} number: "
    num = gets.chomp
    num_set << num.to_i
  end
  
  num_set
end

def search_last_num(num_arr)
  search_num = num_arr.pop
  puts (
    if num_arr.include?(search_num)
      "#{search_num} is in #{num_arr}"
    else
      "#{search_num} is not in #{num_arr}"
    end
    )
end

puts search_last_num(get_numbers)
