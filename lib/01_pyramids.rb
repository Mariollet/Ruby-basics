def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	a = gets.chomp.to_i
	until a.between?(1, 25) do
		puts "nombre invalide"
		a = gets.chomp.to_i
	end
	puts "Voici la pyramide :"
	x = "#"
	o = " "
	l = 1
	a.times do ||
	print o * a
	puts x * l
	l = l + 1
	a = a -1
	end
end

def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	niveau = gets.chomp.to_i
	until niveau.between?(1, 25) do
		puts "nombre invalide"
		niveau = gets.chomp.to_i
	end
	puts "Voici la pyramide :"
	x = "#"
	o = " "
	l = 1
	 while niveau < 25 || niveau > 1
	 	break if niveau == 0
		print o * niveau
		print x * l
		print x * (l - 1)
		puts o * niveau
		l += 1
		niveau -= 1
	end
	return niveau
end

def wtf_pyramid 

	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	niveau = gets.chomp.to_i
	until niveau.between?(1, 25) && niveau%2==1 do
		puts "nombre invalide"
		niveau = gets.chomp.to_i
	end
	half = niveau / 2
	puts "Voici la pyramide :"
	x = "#"
	o = " "
	level = 1
	down = niveau / 2
	niveau.times do
 	 	break if niveau == 0
	 	if niveau > half
			print o * niveau
			print x * level
				print x * (level - 1)
			puts o * niveau
			level += 1
			niveau -= 1
		else 
			until level == 0 do
					print o * down
				print x * level
				print x * (level - 1)
				puts o * down
				level -= 1
				down += 1	
			end
		end
	end
end
 
wtf_pyramid