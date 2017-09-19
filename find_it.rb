def find_it(seq)
  #iterate through, count each, see if count is odd.
   #truth = seq.map { |x| seq.count(x).odd?}.index(true)
   seq[seq.map { |x| seq.count(x).odd?}.index(true)]
   #true_index = truth.index(true)
   #seq[true_index]
   #puts seq[truth]
   
  #if odd break and return
 end


find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
find_it([10])
find_it([1,1,1,1,1,1,10,1,1,1,1])



#detect returns the first instance where the block is true
def find_it_best(seq)
  seq.detect { |n| seq.count(n).odd? }
end
