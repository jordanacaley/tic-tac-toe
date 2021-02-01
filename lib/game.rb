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
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
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
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end

binding.pry