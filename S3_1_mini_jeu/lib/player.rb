class Player
	attr_accessor :name, :life_points
		def initialize(name_player)
		@life_points = 10
		@name = name_player
		end
		def show_state
		puts "#{name} a #{life_points} points de vie"
		end
		def gets_damage(damage)
		@life_points = life_points - (damage.to_i)
		if @life_points <= 0
			puts "Le joueur #{self.name} a été tué !"
		end
		end
		def attacks(player)
		puts "#{self.name} attaque #{player.name}"
		attack_sudden = compute_damage
		puts "Il lui inflige #{attack_sudden} points de dammages"
		player.gets_damage(attack_sudden)
		end
		def compute_damage
		return rand(1..6)
		end
end

class HumanPlayer < Player
	attr_accessor :weapon_level

		def initialize(name_player)
		@weapon_level = 1

		super(name_player)	
		@life_points = 100
		end

		def show_state
		puts "#{self.name} a #{self.life_points} points de vie et une arme de niveau #{self.weapon_level}"
		end

		def compute_damage
		return rand(1..6) * @weapon_level	
		end

		def search_weapon
		@new_weapon_level = rand(1..6)
		puts "Tu as trouvé une arme de niveau #{@new_weapon_level}"
		if @new_weapon_level > @weapon_level
			@weapon_level = @new_weapon_level
			puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends"
		else
			puts "Elle n'est pas mieux que ton arme actuelle.."
		end
		end

		def search_health_pack
		@health_pack = rand(1..6)
		if @health_pack == 1
			puts "Tu n'as rien trouvé..."
		elsif @health_pack >= 2 && @health_pack <= 5
			@life_points = @life_points + 50
		if @life_points > 100
				@life_points = 100
		end
			puts "Bravo, tu as trouvé un pack de +50 points de vie !"
		else @health_pack == 6
			@life_points = @life_points + 80
		if @life_points > 100
				@life_points = 100
		end
			puts "Waow, tu as trouvé un pack de +80 points de vie !"
		end
end