def solution(str)
 str.size.even? ? str.scan(/../) : str.scan(/../) << "#{str[-1]}_"
end


puts solution("abc")
puts solution("abcd")
puts solution("abcdef")

def solution_best str
  (str + '_').scan /../
end