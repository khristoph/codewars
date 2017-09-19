def solution(roman)
	sum = 0
	symbols = { "M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }
	special = { "IV" => 4, "IX" => 9, "XL" => 40, "XC" => 90, "CD" => 400, "CM" => 900 } 

	if roman.include? "IV"
		roman = roman.delete "IV"
		sum += 4
	end

	if roman.include? "IX"
		roman = roman.delete "IX"
		sum += 9
	end

	if roman.include? "XL"
		roman = roman.delete "XL"
		sum += 40
	end

	if roman.include? "XC"
		roman = roman.delete "XC"
		sum += 90
	end

	if roman.include? "CD"
		roman = roman.delete "CD"
		sum += 400
	end

	if roman.include? "CM"
		roman = roman.delete "CM"
		sum += 900
	end



  	roman.each_char do |c|
  		sum += symbols[c]
  	end

  	sum

end

puts solution("MCM")
puts solution("IV")
puts solution('XXI')
puts solution("MDCLXVI")
puts solution("MCMXC")
puts solution("MMVIII")


ROMAN = {
  'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100,
  'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10,
  'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1
}

def solution(roman)
  re = Regexp.new(ROMAN.keys.join('|'))
  roman.scan(re).inject(0) do |number, key|
    number + ROMAN[key]
  end
end

