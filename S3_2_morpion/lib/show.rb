class Show
	def show_board(board)
		puts "#{board.boardcell[0].contenu} | #{board.boardcell[1].contenu} | #{board.boardcell[2].contenu}"
		puts "_" * 10
		puts "#{board.boardcell[3].contenu} | #{board.boardcell[4].contenu} | #{board.boardcell[5].contenu}"
		puts "_" * 10
		puts "#{board.boardcell[6].contenu} | #{board.boardcell[7].contenu} | #{board.boardcell[8].contenu}"
	end
end
