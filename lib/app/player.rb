require "pry"

class Player
    attr_accessor :name, :sign, :player_victory
    
    def initialize(name, sign)

        @name = name
        @sign = sign
        @player_victory = 0

    end

    def show_player_status
        puts "
        #{Player[0].name} a #{Player[0].player_victory} victoire(s)
        et #{Player[1].name} a #{Player[1].player_victory} victoire(s)"
    end


    def play(player1_input)
        puts "#{self.name} joue en #{player1_input}"
    end
   


end
