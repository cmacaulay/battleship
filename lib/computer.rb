require './lib/board'
require 'pry'

class Computer
  attr_accessor   :computer_board
  attr_reader     :board,
                  :cell_index

  SHIPS = [2, 3]

  def initialize
    @computer_board   = Board.new.grid
    @cell_index       = Array.new(2)
    @placement_helper = rand(2)
    @helper_increment = (1 - @placement_helper).abs
  end

  def computer_places_ships
    SHIPS.each do |length|
      first_cell_placement(length)
      change_cell_status
      next_cell_placements(length)
    end
  end

  def first_cell_placement(length)
    @cell_index = [ rand(0..(4 - length)), rand(0..(4 - length)) ]
    check_if_occupied(length)
  end

  def get_cell
    x = cell_index[0]
    y = cell_index[1]
    computer_board[x][y]
  end

  def check_if_occupied(length)
      if get_cell.status == :occupied
        first_cell_placement(length)
      end
      get_cell.status 
  end

  def change_cell_status
    cell = get_cell
    cell.ships_ahoy
  end

  def next_cell_placements(length)
    (length - 1).times do
      starting_cell = @cell_index
        new_cell = Array.new(2)
        new_cell[@placement_helper]  = starting_cell[@placement_helper]
          check_if_occupied(length)
        new_cell[@helper_increment] = (starting_cell[@helper_increment] + 1)
        @cell_index = new_cell
        check_if_occupied(length)
        change_cell_status
      end
    end


end
