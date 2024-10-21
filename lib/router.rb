### Le travail du routeur sera simple : c'est de demander ce que l'utilisateur veut faire et de lancer la bonne méthode dans la bonne classe, en fonction. Il y aura 3 choix : créer un gossip, voir la liste complète des gossips ou supprimer un gossip. Chaque action correspond à une méthode du controller.
###

require_relative 'controller'

class Router

  #On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller", c'est via cette instance qu'il va déclencher la méthode adéquate : celle qui permet d'ajouter un potin, de le supprimer ou de les lister tous.

  def initialize
    @controller =Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true
      puts "Que veux-tu faire?"
      puts "1. Créer un Gossip"
      puts "2. Afficher tous les potins"
      puts "4. Quitter l'app"
      params = gets.chomp.to_i

      case params 
      when 1
        puts "Tu as choisi de créer un gossip" 
        @controller.create_gossip
      when 2
        puts "Tu as choisi d'afficher tous les potins !"
        @controller.index_gossips
      when 4 
        puts "À bientôt !" 
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else 
        puts "Ce choix n'existe pas, meri de réessayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true".  
      end 
    end
  end
end