class Funnel
  # coding and coding...
  def initialize
  end

  def fill *args
  end

  def drip
  end

  def to_s
   puts "\\         /\n" +
        " \\       /\n" +
        "  \\     /\n" +
        "   \\   /\n" +
        "    \\ /"
  end
end

funnel = Funnel.new
funnel.to_s
