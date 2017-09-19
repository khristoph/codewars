def high_and_low(numbers)
	
	nums = numbers.split.map(&:to_i)
	low = nums[0]
	high = nums[0]
	nums.each do |x|
		if x > high
			high = x
		elsif x < low 
			low = x
		end
	end
	"#{high} #{low}"
end


high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"


def high_and_low_best(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

high_and_low_best("1 2 3 4 5")  # return "5 1"
high_and_low_best("1 2 -3 4 5") # return "5 -3"
high_and_low_best("1 9 3 4 -5") # return "9 -5"