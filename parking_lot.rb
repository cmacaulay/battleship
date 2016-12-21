# would I want this to be a module? Would i want to build this into a class?
# If this was a module, would I want it to include rules about what is entered?
# Do I need a list of "acceptable answers" for each ship?


  def convert_coordinates_to_indeces(ship_coordinates)
    ship_coordinates = ship_coordinates.downcase
    index_positions = ship_coordinates.split.map do |coordinate|
      index      = Array.new
      index      << position[0].ord - 97  # converts "a" to 0
      index      << position[1].ord - 49  # converts "1" to 0
    end
    # .join.chars
    # set_of_coordinates.join.chars.map do |value|
    #   value.to_i
    end
  end

end
