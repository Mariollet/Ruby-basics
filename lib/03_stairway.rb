def throw_dice
	dice = rand(1..6)
	return dice
end

def game ()
	scores = 0
	stat = 0
	dice = throw_dice
	until scores > 9 do
		puts
		print "Veuillez lancé le dé :"
		a = gets
		puts
		puts "Lancez de dé !"
		puts "Dès de #{dice}"
		if dice == 5 || dice == 6
		 	puts "Vous avancez d'une marche !"
		 	scores += 1 
		 	stat += 1
		 	puts "Vous êtes à la marches #{scores}"
		elsif dice == 1
		 	puts "Vous descendez d'une marche !"
		 	scores -= 1
		 	stat += 1
		 	puts "Vous êtes à la marches #{scores}"
		else
		 	puts "Vous restez sur place !"
		 	puts "Vous êtes à la marches #{scores}"
		 	stat += 1
		end
	dice = throw_dice
	end
	puts
	puts "Félicitaions vous avez réussi !"
	puts "Vous avez fait #{stat} lancés !"
end

def average_finish_time
	stats_all = []
	sim = 100
	sim.times do
		scores = 0
		stat = 0
		dice = throw_dice
		until scores > 9 do
			puts
			puts "Lancez de dé !"
			puts "Dès de #{dice}"
			if dice == 5 || dice == 6
			 	puts "Vous avancez d'une marche !"
			 	scores += 1 
			 	stat += 1
			 	puts "Vous êtes à la marches #{scores}"
			elsif dice == 1
			 	puts "Vous descendez d'une marche !"
			 	scores -= 1
			 	stat += 1
			 	puts "Vous êtes à la marches #{scores}"
			else
			 	puts "Vous restez sur place !"
			 	puts "Vous êtes à la marches #{scores}"
			 	stat += 1
			end
		dice = throw_dice
		end
		puts
		puts "Félicitaions vous avez réussi !"
		puts "Vous avez fait #{stat} lancés !"
		stats_all << stat
	end
puts
puts stats_all.inspect
puts
puts "En moyenne, il faut #{(stats_all.inject(0, :+) / sim )} lancés de dés pour finir ce jeu !"
end

average_finish_time