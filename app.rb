### Le fichier app.rb = porte d'entrée de notre application. Et étant donné que tout passe par le router, il faut juste que son code fasse appelle à la classe Router via un Router.new.perform et puis c'est tout.
###

require_relative 'lib/controller' # Charge le contrôleur
require_relative 'lib/gossip'
require_relative 'lib/router'
require_relative 'lib/view'       # Charge la vue






Router.new.perform
