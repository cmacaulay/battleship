class Human
attr_reader :coordinates,
            :cell

SHIPS = [2, 3]

  def initialize
    @coordinates  = coordinates
    @cell = cell
  end

  def ship_placement_sequence(length)
    SHIPS.each do |length|
      print ship_placement_instructions(length)
      player_enters_coordinates(length)
      validate_coordinates_are_on_board(length)
      convert_coordinates_to_indices
    end
  end

  def ship_placement_instructions(length)
    "\e[H\e[2J
    I have laid out my ships on the grid.\n
    You now need to layout your two ships.\n
    The first is two units long and the\n
    second is three units long.\n
    The grid has A1 at the top left and D4 at the bottom right.\n
    \nEnter the squares for the #{length}-unit ship:"
  end

  def player_enters_coordinates(length)
      @coordinates = gets.chomp
        if @coordinates.length != ((length * 2) + (length - 1))
          print "Please enter a valid placement, be sure to include spaces between coordinates.\n"
          player_enters_coordinates(length)
        end
  end


  def validate_coordinates_are_on_board(length)
    seperate_letters_and_numbers(length)

  end


  def seperate_letters_and_numbers(length)
    letters = []
    numbers = []
    coordinates = @coordinates.downcase.delete(" ")
    coordinates.chars.each_with_index do |value, index|
      if index.even?
        letters << value
      else
        numbers << value
      end
    end
    number_scan(length, (convert_letters(letters)))
    number_scan(length, numbers)
  end

  def convert_letters(letters)
    letters = letters.map.with_index do |letter|
      letter[0].ord - 97
    end
    letters
  end

  def number_scan(length, values)
    values.each_with_index do |value, index|
      if value >= 4
        print "Unfortunately, your coordinates were not valid.\n
        You must place your ships either horizontally or vertically\n
        and in consecutive grid cells that do not wrap around the board. \n
          Good luck!"
             player_enters_coordinates(length)
      end
   end
   check_conditions(length, values)
  end

  def check_conditions(length, values)
    values.each_with_index do |value, index|
        if (value(index) == value(index + 1)) || ((value(index) + 1) == value(index + 1))
          false
          print "Unfortunately, your coordinates were not valid.\n
          You must place your ships either horizontally or vertically\n
          and in consecutive grid cells that do not wrap around the board. \n
            Good luck!"
               player_enters_coordinates(length)
        end
      end
  end

  def convert_coordinates_to_indices
    coordinates = @coordinates.downcase
    @cell = coordinates.split.map do |coordinate|
      index      = Array.new
      index      << coordinate[0].ord - 97
      index      << coordinate[1].ord - 49
    end
  end

end
