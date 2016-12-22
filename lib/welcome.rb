require 'pry'
require './lib/game'

class Welcome

  def print_start_message
    print start_message
    input = gets.chomp
    player_chooses(input)
  end

  def start_message
     "\e[H\e[2J
     \nWELCOME TO BATTLESHIP!\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n"
  end

  def player_chooses(input)

      if input == ("p" || "play")
        play_game
      elsif input == ("i" || "instructions")
        show_instructions
        gets.chomp
        start_message
      elsif input == ("q" || "quit")
        quit
      else
        puts "What you entered was not valid. Please hit enter to return to menu."
        gets.chomp
        start_message
    end
  end

  def play_game
    Game.new
  end

  def show_instructions
    print "\n\nThis is the game of Battleship.\n"\
      "You and your opponent place ships on a grid, "\
      "and take turns attacking each other."\
      "\n\nThe grids are referenced by letter "\
      "for row, and number for column"\
      "\nA1, B3, etc."\
      "\n\nThe first person to destroy all their "\
      "oppnents ships wins."\
      "(p)lay or (q)uit?"
  end

  def quit
    exit
  end


end
