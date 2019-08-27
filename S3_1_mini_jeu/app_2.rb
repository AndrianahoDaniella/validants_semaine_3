require 'bundler'
Bundler.require

require_relative 'lib/player'
puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"

ennemies = []

puts "Entrez le nom du joueur :"
print "> "

name_player = gets.chomp

player = HumanPlayer.new(name_player)

cop1 = Player.new("Josiane")
cop2 = Player.new("José")
ennemies = [cop1,cop2]

while player.life_points > 0 && (cop1.life_points > 0 || cop2.life_points > 0)
	player.show_state

	puts ""
	puts "Quelle action veux-tu effectuer ?
	a - chercher une meilleure arme
	s - chercher à se soigner 
Attaquer un joueur en vue :
	0 - Josiane a 10 points de vie
	1 - José a 10 points de vie
	"

	print "> "
	choice = gets.chomp

	case choice
	when 'a'
  		player.search_weapon
  	when 's'
  		player.search_health_pack
  	when '0'
  		player.attacks(cop1)
  		if cop1.life_points > 0
  			cop1.show_state
  		end
  	when '1'
  		player.attacks(cop2)
  		if cop2.life_points > 0
  			cop2.show_state
  		end
  	end

  	puts
  	puts "Les autres joueurs t'attaquent !"

  	ennemies.each do |ennemie|
  		if ennemie.life_points > 0
  			ennemie.attacks(player)
  		end
  	end
end

if player.life_points > 0
	puts "BRAVO ! TU AS GAGNE !"
else
	puts "Loser ! Tu as perdu !"
end

binding.pry