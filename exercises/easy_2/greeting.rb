def get_name
  puts "What is your name?"
  name = gets.chomp
  name.capitalize
end

def display_greeting(name)
  puts (
    if name.end_with?('!')
      name = name.chop
      "hello #{name}. why are we screaming?".upcase
    else
      "Hello, #{name}."
    end
    ) 
end

name = get_name
display_greeting(name)
