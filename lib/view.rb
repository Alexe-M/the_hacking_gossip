### La view s'occupera d'afficher les bonnes informations à l'utilisateur. Comme on n'a pas encore vu les systèmes de fichiers HTML, on va coder ça sur le terminal avec des bons vieux puts en l'affichage et gets.chomp pour obtenir les ordres de l'utilisateur.

require_relative 'gossip'   

class View
  #les variables @author et @content sont locales et ne nécessitent donc pas d'être stockées comme attributs de la classe View. Car une fois que les informations sont demandées et retournées sous forme de hash, elles sont utilisées par le contrôleur pour créer une nouvelle instance de Gossip.

  def create_gossip
    puts "Quel est ton nom cher rapporteur de Gossip"
    author = gets.chomp
    puts "Quel potin nous rapportes-tu? "
    content = gets.chomp
    return params = {author: author, content: content}  # Retourne les informations sous forme de hash
  end 
    

  def index_gossips(gossips)
    puts "Voici les potins :"
    gossips.each do |gossip|
      puts "#{gossip.author} a dit : '#{gossip.content}'."
    end
  end

end