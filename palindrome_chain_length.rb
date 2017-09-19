def palindrome_chain_length(n)
	count = 0
	until n.to_s.reverse.to_i == n.to_i
		n = n.to_s.reverse.to_i + n
		count += 1
	en
	count
end


puts palindrome_chain_length(87)


def palindrome_chain_length(n)
  n.to_s == n.to_s.reverse ? 0 : 1 + palindrome_chain_length(n + n.to_s.reverse.to_i)
end