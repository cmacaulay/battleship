module Messages

  def welcome
    print "\e[H\e[2J"
    puts "WELCOME TO BATTLESHIP!\n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    puts "The object of Battleship is to try and sink all of the other player's before they sink all of your ships.\n"
    puts "Both you and the computer player have 2 ships, \n"
    puts "a destroyer which has a length of 2, \n"
    puts "and a submarine which has a length of 3. \n"
    puts "Both you and the computer will place your ships onto your grid.\n"
    puts ""
  end

end
