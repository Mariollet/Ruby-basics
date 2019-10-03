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
		dice = throw_dice
		puts
		puts "Dé de #{dice}"
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


	end
	puts
	puts " Félicitaions vous avez réussi avec #{stat} lancés !"
	print
end

def average_finish_time
	stats_all = []
	sim = 111
	sim.times do
		scores = 0
		stat = 0
		dice = throw_dice
		until scores > 9 do
			dice = throw_dice
			if dice == 5 || dice == 6
			 	scores += 1 
			 	stat += 1
			elsif dice == 1
			 	scores -= 1
			 	stat += 1
			else
			 	stat += 1
			end
		end
		puts
		puts "Félicitaions vous avez réussi avec #{stat} lancés !"
		stats_all << stat
	end
puts
puts stats_all.inspect
puts
puts " En moyenne, il faut #{(stats_all.inject(0, :+) / sim )} lancés de dés pour finir ce jeu !"
end

game