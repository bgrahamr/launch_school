def real_palindrome?(str)
  cleaned_str = ''
  str.chars.each do |char|
    cleaned_str << char.downcase if /[[:alnum:]]/.match?(char)
  end

  cleaned_str == cleaned_str.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
