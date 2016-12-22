class Cell
  attr_accessor :status, :ship

  GRID_OPTIONS = {  :open_sea   => ".",
                    :hit        => "H",
                    :miss       => "M",
                    :occupied   => "X" }
                    # :submarine  => "S"
                    # :destroyer  => "D" }


  def initialize(status = :open_sea, ship = :empty)
    @status = status
    @ship   = ship
  end
#what i'll probably end up doing is update board status and update ship status,
# the latter for ship placement specifically
  def update_board_cell
    if @ship && @status != :hit
      @ship.update_board_cell
    elsif @status == :hit
      GRID_OPTIONS[@status]
    elsif @status == :miss
      GRID_OPTIONS[@status]
    else
      GRID_OPTIONS[@status]
    end
  end

  def ships_ahoy
    # when ship = ship, status = :occupied
    @ship   = :ship
    @status = :occupied
  end

  def hit
    @status = :hit
  end

  def miss
    @status = :miss
  end

end
