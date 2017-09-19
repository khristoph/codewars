def title_case(title, minor_words)

	if title == ""
		return ""
	end

  prep = title.split.map(&:downcase).map(&:capitalize)
  minor_prep = minor_words.split.map(&:capitalize)
  prep.each do |x|
  	if minor_prep.include? x 
  		x.downcase!
  	end
  end
   prep[0].capitalize!
  prep.join(' ')
end
puts title_case("","")
puts title_case('the quick brown fox', 'quick')
puts title_case('a clash of KINGS', 'a an the of')
puts title_case('THE WIND IN THE WILLOWS', 'The In')
puts title_case('the quick brown fox', "")


def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end