require 'pry'
require './lib/cell'

class Board
  attr_accessor :grid
  attr_reader   :columns, :rows

  NUM_SHIPS         = 2
  BOARD_SIZE        = 4
  ROW_LETTER        = ["A", "B", "C", "D"]
  COLUMN_NUM        = [" ", "1", "2", "3", "4"]

  def initialize
    @grid = columns.map! do
      rows
    end

  end

  def columns
    Array.new(BOARD_SIZE)
  end

  def rows
    Array.new(BOARD_SIZE).map! do
      Cell.new
    end
  end

  def print_board
    print_column_numbers
    @grid.each_with_index do |row, index|
      print_row_letters(index)
        row.each do |cell|
          print_cell_contents(cell)
          # binding.pry
        end
        print "\n"
    end
  end

  def print_column_numbers
    print COLUMN_NUM.join("\t")
    print "\n"
  end

  def print_row_letters(index)
    print ROW_LETTER[index]
    print "\t"
  end

  def print_cell_contents(cell)
    print cell.update_board_cell
    print "\t"
  end
end
