require 'bundler'
Bundler.require

require_relative 'game.rb'

class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    game = Game.new
    game.turn
  end

end