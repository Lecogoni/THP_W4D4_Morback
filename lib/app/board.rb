require "pry"

class Board

    attr_accessor :cell

# -- initalisation de board - création d'un array @cell qui contient et initialise les 9 boardcases avec une key correspondant à l'emplacement et une value vide

    def initialize

        @cell = [BoardCase.new("a1", " "), 
                BoardCase.new("a2", " "), 
                BoardCase.new("a3", " "), 
                BoardCase.new("b1", " "), 
                BoardCase.new("b2", " "), 
                BoardCase.new("b3", " "),
                BoardCase.new("c1", " "),
                BoardCase.new("c2", " "),
                BoardCase.new("c3", " ")]
    end

# -- méthode qui affiche le board avec les valeurs " ", X ou O

    def show_board
        puts ""
        puts "                1      2      3"
        puts "            ----------------------"
        puts "            |      |      |      |"
        puts "          A |   #{cell[0].value}  |  #{cell[1].value}   |  #{cell[2].value}   |"
        puts "            |      |      |      |"
        puts "            ----------------------"
        puts "            |      |      |      |"
        puts "          B |   #{cell[3].value}  |  #{cell[4].value}   |  #{cell[5].value}   |"
        puts "            |      |      |      |"
        puts "            ----------------------"
        puts "            |      |      |      |"
        puts "          C |   #{cell[6].value}  |  #{cell[7].value}   |  #{cell[8].value}   |"
        puts "            |      |      |      |"
        puts "            ----------------------"
    end 
end


