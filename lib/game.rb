require 'time'
require 'pry'


class Game
  attr_reader :start_time, :guesses

  def initialize
    @start_time = Time.now
    @guesses    = 0
  end

  def time_elapsed
    (Time.now - start_time).to_i 
  end


end
