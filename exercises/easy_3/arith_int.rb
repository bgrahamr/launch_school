def num_input
  pair = []
  takes = %w[first second]
  
  takes.each do |take|
    puts "==> Enter the #{take} number: "
    num = gets.chomp
    pair << num.to_i
  end
  
  pair
end

def show_arith(nums)
  operations = %w[+ - * / % **]
  operations.each do |operator|
    result = nums.reduce(operator.to_sym)
    puts "==> #{nums.first} #{operator} #{nums.last} = #{result}"
  end
end

show_arith(num_input)