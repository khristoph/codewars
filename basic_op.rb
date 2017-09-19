def basic_op(operator, value1, value2)
  case operator
    when '+'
      value1 + value2
    when '-'
      value1 - value2
    when '*'
      value1 * value2
    when '/'
      value1 / value2
     end
end

puts basic_op('+', 4, 7)
puts basic_op('-', 15, 18)
puts basic_op('*', 5, 5)
puts basic_op('/', 49, 7)

def basic_op_best(operator, value1, value2)
  value1.send(operator, value2)
end

def basic_op_clever(operator, value1, value2)
  eval("#{value1}#{operator}#{value2}")
end