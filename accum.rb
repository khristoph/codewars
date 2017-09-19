def accum (s)
	
	s.downcase.split(//).map.with_index{ |x,i| x * (i+1)}.map(&:capitalize).join('-')
	
end

puts accum("aRdwer")

def accum_best(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end