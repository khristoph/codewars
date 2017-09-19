def find_short(s)
	l = s.split.min_by {|x| x.length}.length
  #l = s.split.index(s.split.min_by { |x| x.length})# puts s.split.index(l)# your code here
    return l # l: length of the shortest word
end


find_short("bitcoin take over the world maybe who knows perhaps")
find_short("turns out random test cases are easier than writing out basic ones")
find_short("lets talk about javascript the best language")
find_short("i want to travel the world writing code one day")
find_short("Lets all go on holiday somewhere very cold")



#splits it into an array, maps each element to its size then gets the minimum 
def find_short_best(s)
  s.split.map(&:size).min
end