
def isPrime(num)
	if num < 2 
		prime = false
	else
		prime = true
	end
  (2...num).each do |x|
  	 	if num % x == 0
  	 		prime = false
  	 	end
  end
  prime
end


puts isPrime(13)
puts isPrime(55)
puts isPrime(13)
puts isPrime(37)
puts isPrime(40)
puts isPrime(83)
puts isPrime(99)

require 'prime'

def isPrime(num)
  num.prime?
end