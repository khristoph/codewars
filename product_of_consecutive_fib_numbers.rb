def productFib(prod)
  i = 1
  f1 = fib(0)
  f2 = fib(1)
  while f1 * f2 < prod
    i += 1
    f1 = f2
    f2 = fib(i)
  end
  if f1 * f2 == prod
    return [f1, f2, true]
  else
    return [f1, f2, false]
  end
end



def fib(n)
  if n == 0 || n == 1
    return n
  end
  prev_prev = 0
  prev = 1
  current = 0
  (n-1).times do
    current = prev + prev_prev
    prev_prev = prev
    prev = current
  end
  return current
end





def productFib(prod)
  a, b = [0, 1]
  while prod > a * b
    a, b = [b, a + b]
  end
  [a, b, prod == a * b]
end


p productFib(714) # should return [21, 34, true],
                # since F(8) = 21, F(9) = 34 and 714 = 21 * 34

p productFib(800) # should return [34, 55, false],
                # since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55