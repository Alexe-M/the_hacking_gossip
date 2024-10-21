### Le controller servira de relai entre la view et le model. Il aura 3 méthodes : une qui gère la création d'un potin, une qui gère l'affichage de la liste des potins, et une qui permet de détruire un potin. Une fois l'action effectuée (via le model), la méthode devra renvoyer vers la view.
###

require_relative 'gossip'
require_relative 'view'


class Controller

  def initialize
    @view = View.new  #on crée une instance de la classe View. Cela signifie que le contrôleur peut utiliser cette instance pour appeler les méthodes définies dans View.
  end


  def create_gossip 
    params = @view.create_gossip  # Récupère les données de l'utilisateur
    gossip = Gossip.new(params[:author], params[:content])   # Crée un nouvel objet Gossip avec les valeurs du hash provenant de la classe view
    gossip.save   # Sauvegarde le gossip
  end

  def index_gossips
    gossips_listing = Gossip.all    # Récupérer tous les potins de la méthode self.all dans la classe Gossip
    gossips = @view.index_gossips(gossips_listing)
  end



end