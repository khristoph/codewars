def group_check(s)

  check_array = Array.new
  s_array = s.split('')
 while s_array.length > 0

  	check_array << s_array.shift
  	if check_array[-1] == "]" && check_array[-2] == "["
  		check_array.delete_at(-2)
  		check_array.delete_at(-1)
  		
  	end
  
  		
  	if check_array[-1] == "}" && check_array[-2] == "{"
  		check_array.delete_at(-2)
  		check_array.delete_at(-1)
  		
  	end

  	if check_array[-1] == ")" && check_array[-2] == "("
  		check_array.delete_at(-2)
  		check_array.delete_at(-1)
  		
  	end

  end
 
  check_array.empty? ? true : false

end



puts group_check("{}([])")
puts group_check("{[{}[]()[]{}{}{}{}{}{}()()()()()()()()]{{{[[[((()))]]]}}}}(())[[]]{{}}[][][][][][][]({[]})")
puts group_check("")
puts group_check("{(})")
puts group_check("[{}{}())")

def group_check(s)
  stack = []
  symbols = { '{' => '}', '[' => ']', '(' => ')' }
  s.each_char do |c|
    stack << c if symbols.key?(c)
    return false if symbols.key(c) && symbols.key(c) != stack.pop
  end
  stack.empty?
end


def group_check s
  loop do
    return true if s.empty?
    c = s.gsub /(\{\})|(\[\])|(\(\))/, ''
    return false if c == s
    s = c
  end
end

def validBraces(braces)
  while braces.gsub!(/(\(\)|\[\]|\{\})/,'') do; end
  braces.empty?
end