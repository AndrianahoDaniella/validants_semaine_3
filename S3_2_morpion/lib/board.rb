class Board
	attr_accessor :boardcell

	def initialize
		a1 = BoardCase.new
		a2 = BoardCase.new
		a3 = BoardCase.new

		b1 = BoardCase.new
		b2 = BoardCase.new
		b3 = BoardCase.new

		c1 = BoardCase.new
		c2 = BoardCase.new
		c3 = BoardCase.new

		@boardcell = [a1,a2,a3,b1,b2,b3,c1,c2,c3]
	end

	def playturn(current_player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    	puts "Entrer votre choix: "
		print "> "
    	choix = gets.chomp

    	case choix
		when choix
			i = choix.to_i - 1
			boardcell[i].contenu = current_player.symbol
		end
  	end
end