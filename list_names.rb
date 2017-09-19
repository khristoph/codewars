
def list names
	case names.size
	when 0
		""
	when 1
		suffix = names.map(&:values)[-1].join

	else
		prefix = names.map(&:values).slice(0...-1).join(', ')
		suffix = names.map(&:values)[-1].join
		prefix +" & "+ suffix
	end
end



puts list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
puts list([{name: 'Bart'},{name: 'Lisa'}])
puts list([{name: 'Bart'}])
puts list([])


def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end