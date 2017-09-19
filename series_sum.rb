def series_sum(n)
  sum = 
  count = 0
  divider = 1.00
  while count < n 
  	sum += 1.00/divider
  	count += 1
  	divider += 3
  end
  sprintf( "%0.02f", sum)
end



puts series_sum(1)
puts series_sum(2)
puts series_sum(3)