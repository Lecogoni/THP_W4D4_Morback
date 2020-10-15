
class Board

    attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3 

    def initialize

        @a1 = "  a1  "
        a1 = BoardCase.new(a1)
        @a2 = "  a2  "
        a2 = BoardCase.new(a2)
        @a3 = "  a3  "
        a3 = BoardCase.new(a3)

        @b1 = "  b1  "
        b1 = BoardCase.new(b1)
        @b2 = "  b2  "
        b2 = BoardCase.new(b2)
        @b3 = "  b3  "
        b3 = BoardCase.new(b3)

        @c1 = "  c1  "
        c1 = BoardCase.new(c1)
        @c2 = "  c2  "
        c2 = BoardCase.new(c2)
        @c3 = "  c3  "
        c3 = BoardCase.new(c3)


        puts "      1      2      3"
        sleep(0.1)
        puts "  ----------------------"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "A |      |      |      |"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "  ----------------------"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "B |      |      |      |"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "  ----------------------"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "C |      |      |      |"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "  ----------------------"
    end

    def show_board
        puts ""
        puts "      1      2      3"
        sleep(0.1)
        puts "  ----------------------"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "A |#{a1}|#{a2}|#{a3}|"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "  ----------------------"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "B |#{b1}|#{b2}|#{b3}|"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "  ----------------------"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "C |#{c1}|#{c2}|#{c3}|"
        sleep(0.1)
        puts "  |      |      |      |"
        sleep(0.1)
        puts "  ----------------------"
    end 
end