def sign_up ()
	puts "Définir mot de passe :"
	print "> "
	mdp = gets.chomp.to_s
	until mdp != "" do
		puts "Mot de passe invalide"
		print "> " 
		mdp = gets.chomp.to_s
	end
	return mdp
end 

def login (mdp)
	puts "Bonjour, quel est votre mot de passe ?"
	print "> " 
	mdpt = gets.chomp.to_s
	until mdpt == mdp do
		puts "Mot de passe invalide"
		print "> " 
		mdpt = gets.chomp
	end
end

def welcome_screen ()
	puts "Bienvenue dans votre zone sécurisée !"
	puts "En réponse à une plate-forme organisationnelle, la réponse est simple : flexibiliser les sourcing conseil."
	puts "En termes de redynamisation de la crise institutionnelle, il est porteur de budgetiser les alternatives durables."
	puts "Par l'implémentation de la compétitivité asymétrique, le marché impose de valoriser les prestations de confiance."
end

def perform
	login(mdp = sign_up)
	welcome_screen
end

perform