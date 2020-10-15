require "pry"

class Board

    attr_accessor :cell

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


        puts "      1      2      3"
        # sleep(0.1)
        puts "  ----------------------"
        sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "A |      |      |      |"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "  ----------------------"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "B |      |      |      |"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "  ----------------------"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "C |      |      |      |"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "  ----------------------"
    end

    def show_board
        puts ""
        puts "      1      2      3"
        # sleep(0.1)
        puts "  ----------------------"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "A |   #{cell[0].value}  |  #{cell[1].value}   |  #{cell[2].value}   |"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "  ----------------------"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "B |   #{cell[3].value}  |  #{cell[4].value}   |  #{cell[5].value}   |"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "  ----------------------"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "C |   #{cell[6].value}  |  #{cell[7].value}   |  #{cell[8].value}   |"
        # sleep(0.1)
        puts "  |      |      |      |"
        # sleep(0.1)
        puts "  ----------------------"
    end 


end

#if @cell[0][1] == @cell[1][1] == @cell[2][1]
