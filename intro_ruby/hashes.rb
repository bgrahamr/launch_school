#exercise 1
puts 'exercise 1:'

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_fam = family.select do |k, v|
                  k == :sisters || k == :brothers
                end

puts immediate_fam.values.flatten


#exercise 2
puts ""
puts 'exercise 2:'

# .merge doesn't mutate the caller, while .merge! does.

family1 = {  uncles: ["bob", "joe", "steve"],
             aunts: ["mary","sally","susan"]
          }

family2 = { sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"]
          }

puts family1.merge(family2)
puts family1
puts family2
puts family1.merge!(family2)
puts family1
puts family2


#exercise 3
puts ""
puts 'exercise 3:'

family.each_key { |k| puts k }
family.each_value { |v| puts v }
family.each { |k, v| puts "#{k}: #{v}" }


#exercise 4
puts ""
puts 'exercise 4:'

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]


#exercise 5
puts ""
puts 'exercise 5:'

puts person.has_value?('web developer')
puts person.has_value?('Steve')


#exercise 6
puts ""
puts 'exercise 6:'
puts 'see comments'

#The key in the first hash is a symbol, while the second is a string(?...no quotes)


#exercise 7
puts ""
puts 'exercise 7:'
puts 'see comments'

# B


#exercise 8
puts ""
puts 'exercise 8:'

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

letter_combos = Hash.new([])

words.each do |word|
  letters = word.chars.sort
  letter_combos[letters] += [word]
end

anagrams = letter_combos.select { |k, v| v.length > 1 }

p anagrams.values









