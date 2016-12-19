require 'pry'

class Board

  attr_reader :print_board
  

  def print_board
    board_layout = Array.new(10, ".").map{|row| Array.new(10, ".")}
      row_label     = [".", "A", "B", "C", "D"]
      column_label  = [".", "1", "2", "3", "4"]

      print "\t"
      print row_label.join("\t")
      puts
      board_layout.each_with_index do |row, i|
        print column_label[i]
        print "\t"
        print row.join("\t")
        puts
      end
  end

binding.pry
end
