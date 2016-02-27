class GridPoint
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def to_string
    "(#{x},#{y})"
  end
end
