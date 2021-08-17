class ClosedRange
  attr_reader :lower_endpoint, :upper_endpoint

  def initialize(lower_endpoint, upper_endpoint)
    @lower_endpoint = lower_endpoint
    @upper_endpoint = upper_endpoint
  end

  def to_s
    "[#{lower_endpoint},#{upper_endpoint}]"
  end

  def includes?(target_integer)
    lower_endpoint <= target_integer && target_integer <= upper_endpoint
  end
end
