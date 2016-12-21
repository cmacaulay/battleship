require 'pry'
require './lib/game'
require './lib/messages'

class Welcome
  include Messages

  def start_message
    print "\e[H\e[2J"
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
        gets.chomp 
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
    p "This is how you play the game."
  end

  def quit
    exit
  end


end
