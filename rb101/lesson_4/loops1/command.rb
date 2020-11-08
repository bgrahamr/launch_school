# Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts "Should I stop looping? (enter 'yes' to break)"
  answer = gets.chomp
  break if answer.downcase == 'yes'
end
