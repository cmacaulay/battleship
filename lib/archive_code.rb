# board.rb

  def initialize
    @current_board = Array.new
  end


  def print_board
    print_row_label
    puts
    board_layout.each_with_index do |row, i|
      print column_label[i]
      print "\t"
      print row.join("\t")
      puts
    end
  end

  def board_layout
     Array.new(4, " ").map do |row|
      Array.new(4, " ")
    end
  end

  def row_label
    ["1", "2", "3", "4"].join("\t")
  end

  def print_row_label
    print "\t"
    print row_label
  end

  def column_label
     ["A", "B", "C", "D"]
  end


  def print_board A1 hit
   board_layout  = Array.new(3, ".").map{|row| Array.new(4, ".")}
   row_label     = ["1", "2", "3", "4"]
   column_label  = ["B", "C", "D"]
   t             = "\t"

   print t
   print row_label.join(t)
   print "\n"
   print ["A", "hit", ".", ".", "."].join(t)
   puts
   board_layout.each_with_index do |row, i|
     print column_label[i]

     print "\t"
     print row.join("\t")
     puts
   end

# 
