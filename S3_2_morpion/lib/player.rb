class Player
	attr_reader :name_player, :symbol

	@@nb_of_players = 0
	def initialize(name_player)
		@name_player = name_player
		if @@nb_of_players == 0
			@symbol = "X"	
		else
			@symbol = "O"	
		end

		@@nb_of_players += 1
	end
end 