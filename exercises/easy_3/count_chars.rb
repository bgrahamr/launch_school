def prompt(str)
  puts "==> #{str}"
end

def prompt_str_input
  prompt('Please write a word or multiple words: ')
  str = gets.chomp
  str
end

def show_str_length(str)
  len = str.delete(' ').length
  prompt("There are #{len} characters in \"#{str}\"")
end

show_str_length(prompt_str_input)