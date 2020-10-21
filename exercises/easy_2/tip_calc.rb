def get_bill_subtotal
  puts "What is the bill total? "
  subtotal = gets.chomp
  subtotal.to_f
end

def get_tip_perc
  puts "What is the tip %? (15.5% would be entered as 15.5)"
  percentage = gets.chomp
  percentage.to_f / 100
end

def calculate_tip(tip_per, total)
  (tip_per * total).round(2)
end

def calculate_total(subtotal, tip)
  (subtotal + tip).round(2)
end

def display_tip(tip)
  puts "The tip is $#{tip}"
end

def display_total(total)
  puts "The total is $#{total}"
end

subtotal = get_bill_subtotal
percentage = get_tip_perc

tip = calculate_tip(percentage, subtotal)
display_tip(tip)

total = calculate_total(subtotal, tip)
display_total(total)
