def throw_dice
	dice = rand(1..6)
	return dice
end

def move ()
	scores = 0
	stat = 0
	dice = throw_dice
	until scores > 9 do
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
	puts
	a = gets
	end
	puts "Félicitaions vous avez réussi !"
	puts "Vous avez fait #{stat} lancés !"
end

def perform
	move
end

perform