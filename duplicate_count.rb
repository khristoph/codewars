def duplicate_count(text)
	#each character looks at all other characters
	dupes = 0
	text.downcase!#if it finds one equal to itself it stops, adds one to the couter, then deletes all instances of itself
    text.each_char do |x|
    	  this = text.count x
    		if this > 1
    			dupes += 1
    			text.delete! x
    		end   	
    end
    dupes
end

puts duplicate_count("")
puts duplicate_count("abcde")
puts duplicate_count("abcdeaa")
puts duplicate_count("abcdeaB")
puts duplicate_count("Indivisibilities")

def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

def duplicate_count(text)
  arr = text.downcase.split("")
  arr.uniq.count { |n| arr.count(n) > 1 }
end