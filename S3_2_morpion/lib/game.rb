class Game
	attr_accessor :current_player, :status, :board, :players

	def initialize
		player1 = Player.new("Player 1")
		player2 = Player.new("Player 2")

		@board = Board.new

		@status = "On going"

		@players = [player1,player2]

		@current_player = @players[0]
	end

	def turn
		Show.new.show_board(@board)
		@board.playturn(current_player)
		@current_player = @players[1]
	end
end 