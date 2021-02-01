require 'bundler'
Bundler.require

require_relative 'board.rb'
require_relative 'player.rb'
require_relative 'show.rb'

class Game
  #current_player is a Player object, status is ongoing, nul or a Player object if he/she has won, the Board, and an array containing the 2 players
  attr_accessor :current_player, :status, :board, :players_array

  def initialize
    # Create 2 players
    puts "Player 1, you'll be X. What is your name?"
    player1 = Player.new("#{gets.chomp}", "X")
    puts "Player 2, you'll be O. What is your name?"
    player2 = Player.new("#{gets.chomp}", "O")

    #define a current player
    @current_player = player1
    # set status to ongoing
    @status = "ongoing"
    # Create a Board
    @board = Board.new
    @players_array = [player1, player2]

  end

  def turn
    # Show the board, ask the player what they want to do, check if someone has won, go to the next player if the game isn't over
    Show.new.show_board(@board)
    while @board.victory? == false
      @board.play_turn(@players_array[0])
      Show.new.show_board(@board)
      if @board.victory? != false
        break
      end
      @board.play_turn(@players_array[1])
      Show.new.show_board(@board)
    end
    game_end
    puts "Do you want to play again? Y or N?"
    play_again = gets.chomp
    if play_again == "Y"
      new_round
    end
  end

  def new_round
    # Restarts the game resetting the board but keeping the same players
    @board = Board.new
    turn
  end

  def game_end
    # Show the game is over when someone wins or if there's a draw
    puts "Game over!"
    if @board.victory? == "X"
      puts "#{@players_array[0].name} won!"
      @status = @players_array[0]
    elsif @board.victory? == "O"
      puts "#{@players_array[1].name} won!"
      @status = @players_array[1]
    elsif @board.victory? == "draw"
      puts "It's a draw!"
      @status = "nul"
    end
  end    

end

binding.pry