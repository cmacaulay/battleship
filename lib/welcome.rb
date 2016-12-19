require 'pry'
require_relative 'game'

class Welcome

  def start_message
    puts "WELCOME TO BATTLESHIP!\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp
    player_chooses(input)
    # binding.pry
  end

  def player_chooses(input)

      if input == ("p" || "play")
        play_game
      elsif input == ("i" || "instructions")
        show_instructions
        start_message
      elsif input == ("q" || "quit")
        quit
      else
        puts "Please try again by slecting\n(p)lay, (i)nstructions, or (q)uit."
    end
  end

  def play_game
    Game.new
  end

  def show_instructions
    puts "This is how you play the game."
  end

  def quit
    exit
  end


end
