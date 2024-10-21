### Le model sera une classe Gossip qui ira piocher dans la base de données (le CSV) et sortira des instances de type Gossip. Elles auront, tu l'as compris, 2 variables d'instance : un content et un author.
###

require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open('db/gossip.csv', 'w') do |csv|
      csv << [@author, @content]    #Écrire une ligne contenant author et content séparés par une virgule
    end
  end 

  def self.all
    all_gossips = []
    CSV.foreach("db/gossip.csv") do |ligne|
      gossip_temporary = Gossip.new(ligne[0], ligne[1]) # Crée un nouvel objet Gossip pour chaque ligne: ligne[0] correspond à author, ligne[1] correspond à content
      all_gossips << gossip_temporary    #Ajoute le potin au tableau
    end
    return all_gossips # Retourne le tableau d'objets Gossip
  end


end
