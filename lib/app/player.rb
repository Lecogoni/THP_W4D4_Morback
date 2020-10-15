require "pry"

# -- Call Player

class Player
    attr_accessor :name, :sign, :player_victory
    
# -- initalisation de joueur

    def initialize(name, sign)
        @name = name
        @sign = sign
        @player_victory = 0
    end

# -- affiche un recap du nombre de parties gagné pour chaque joueur - FONCTIONNE PAS

    def show_player_status
        puts "#{player[0].name} a #{Player[0].player_victory} victoire(s)
        et #{player[1].name} a #{Player[1].player_victory} victoire(s)"
    end  
end
