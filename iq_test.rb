def iq_test(numbers)
  #iterate through all numbers finding if the evens or the odds have the 'differing' number
  evens = 0
  odds = 0
  list = numbers.split
	numbers.split.each do |num|
  		if num.to_i.even?
  			evens += 1
  		elsif num.to_i.odd?
  			odds += 1
  		end
	end



  if evens == 1
  	list.each do |num|
  		if num.to_i.even?
  			return list.index(num) + 1
  		end
  	end
  elsif odds == 1
  	  	list.each do |num|
  			if num.to_i.odd?
  				 return list.index(num) + 1
  			end
  		end
  	end	  
end
  # if number of evens = 1:
     #find index of the even one 
  #if number of odds = 1
    #find the index of odd one
    




 def iq_test_best(numbers)
 	#{|number| number.to_i} is (&:to_i)
  nums = numbers.split.map(&:to_i).map(&:even?)
  	#whatever ? 'do this if yes' : 'do this if no'
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end

 puts iq_test_best("2 8 4 6 7")
 puts iq_test_best("3 5 4 9 7 1")