
#required arguments

a = %w(a b c d e)

a.insert(3, 5, 6, 7)
p a 


s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect