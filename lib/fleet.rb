class Fleet
  attr_reader :ship_length,
              :hit_count

  def initialize(length)
    @ship_length  = length
    @hit_count    = 0
    @sunk         = false
  end

  def sunk?
    @ship_length == @hit_count ? true : false
  end

  def hit
    @hit_count += 1
  end

end
