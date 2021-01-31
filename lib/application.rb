class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 

    #Initialize players
    puts "Player 1, you'll be X. What is your name?"
    player1 = Player.new("#{gets.chomp}", "X")
    puts "Player 2, you'll be O. What is your name?"
    player2 = Player.new("#{gets.chomp}", "O")

  end

end