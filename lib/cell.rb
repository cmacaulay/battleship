class Cell
  attr_accessor :status, :ship

  GRID_OPTIONS = {  :open_sea   => ".",
                    :hit        => "H",
                    :miss       => "M",
                    :occupied   => "X" }
                  
  def initialize(status = :open_sea, ship = :empty)
    @status = status
    @ship   = ship
  end

  def update_board_cell
    if @status == :hit
      GRID_OPTIONS[@status]
    elsif @status == :miss
      GRID_OPTIONS[@status]
    elsif @status == :occupied
      GRID_OPTIONS[@status]
    else
      GRID_OPTIONS[@status]
    end
  end

  def ships_ahoy
    @ship   = :ship
    @status = :occupied
  end

  def hit
    @status = :hit
    @ship = :hit
  end

  def miss
    @status = :miss
  end

end
