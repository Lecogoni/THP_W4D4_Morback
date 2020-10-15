require "pry"

class Player
    attr_accessor :name, :sign, :player_victory
    
    def initialize(name, sign)

        @name = name
        @sign = sign
        @player_victory = 0

    end

    def show_player_status
        puts "#{self.name} a #{self.player_victory} victoire(s)"
    end

end

