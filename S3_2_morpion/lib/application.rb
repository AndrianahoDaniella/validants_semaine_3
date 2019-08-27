class Application
  def perform
  	game = Game.new

    fin = true  
	while fin
		game.turn
	end

  end

end 