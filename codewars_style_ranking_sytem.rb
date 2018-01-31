class User
  attr_reader :rank, :progress

  def initialize
    @rank = -8
    @progress = 0
  end

  def inc_progress(difficulty)
    if difficulty < -8 || difficulty > 8 || difficulty == 0
      raise ArgumentError.new("Incorrect difficulty level")
    end

    if @rank == difficulty
      @rank += 3
    elsif @rank < difficulty
      d = (difficulty - @rank).abs #tougher
      @progress += 10*d*d
      rank_ups = @progress/100

      @progress = @progress % 100

    elsif (@rank - difficulty).abs <= 1

    elsif (@rank - difficulty).abs > 1
      #no change
    end
  end

end



class User
  RANKS = [-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8]

  def initialize
    @points = 0
  end

  def rank
    RANKS[@points / 100] || 8
  end

  def progress
    rank == 8 ? 0 : @points % 100
  end

  def inc_progress(completed_rank)
    raise "Invalid rank" unless index = RANKS.index(completed_rank)

    @points += case delta = index - @points / 100
    when -1    then 1
    when 0     then 3
    when 1..16 then 10 * delta * delta
    else            0
    end
  end
end

user = User.new
p user.rank
p user.progress
p user.inc_progress(7)
benji = User.new
p benji.progress
p user.progress
