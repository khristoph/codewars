def choose_best_sum(t, k, ls)

	ls.combination(k).to_a.map! { |c| c.inject(0, :+)}.delete_if {|sums| sums > t }.max
	
end



        #ts = [50, 55, 56, 57, 58]
       #choose_best_sum(163, 3, ts)
        ts = [50]
        puts choose_best_sum(163, 3, ts)
        #ts = [91, 74, 73, 85, 73, 81, 87]
        #puts choose_best_sum(230, 3, ts)
  

def choose_best_sum(t, k, ls)
  ls.combination(k).collect { |ds| ds.inject(:+) }.reject { |d| d > t }.max
end


def choose_best_sum(t, k, ls)
    ls.combination(k)
      .map{|path| path.inject(:+)}
      .select{|sum| sum <= t}
      .max
end