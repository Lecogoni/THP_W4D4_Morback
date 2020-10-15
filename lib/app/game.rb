require "pry"

class Game

    attr_accessor :p1name, :p2name, :board, :players, :result,

    def initialize(input_player1_name,input_player2_name)

        @p1name = input_player1_name
        @p2name = input_player2_name
        @board = Board.new
        @result = false



        @players = [
        Player.new(p1name, "X"),
        Player.new(p2name, "O")]
    end

    def game_on

        4.times do |i|
            round(players[0])
            check_result
            #puts result
            puts @winner 
            break if result == true
            round(players[1])
            check_result
            puts @winner 
            #puts result
            break if result == true
        end   
         
        round(players[0])
        check_result
        if result == true
            puts @winner
        else 
            puts "Match Nul"
        end
    end

    # def game_on_end
        
    # end

    def round(player)

        puts "#{player.name} tu veux jouer quoi ? "
        input_player_round = gets.chomp
        
        number = 0
        board.cell.each do |cellule|
             if input_player_round == cellule.name
                cellule.value = "#{player.sign}"
             end
             number += 1
        end
        board.show_board
    end

    def check_result

        @result = ""
        @winner = ""

        if board.cell[0].value == board.cell[1].value && board.cell[0].value == board.cell[2].value
            if board.cell[0].value == "X"
                #player[0]player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[0].value == "O"
                #player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[3].value == board.cell[4].value && board.cell[3].value == board.cell[5].value
            if board.cell[3].value == "X"
                #player[0]player_victory += 1
                winner = "#{players[0].name} a gagné"
                @result = true
                puts "#{players[0].name} a gagné"
            elsif board.cell[3].value == "O"
                #player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                puts "#{players[1].name} a gagné"
            end
        end  

        if board.cell[6].value == board.cell[7].value && board.cell[6].value == board.cell[8].value
            if board.cell[6].value == "X"
                #player[0]player_victory += 1
                winner = "#{players[0].name} a gagné"
                @result = true
                puts "#{players[0].name} a gagné"
            elsif board.cell[6].value == "O"
                # player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                puts "#{players[1].name} a gagné"
            end
        end  

        if board.cell[0].value == board.cell[3].value && board.cell[0].value == board.cell[6].value
            if board.cell[0].value == "X"
                #player[0]player_victory += 1
                winner = "#{players[0].name} a gagné"
                @result = true
                puts "#{players[0].name} a gagné"
            elsif board.cell[0].value == "O"
                # player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                puts "#{players[1].name} a gagné"
            end
        end  

        if board.cell[1].value == board.cell[4].value && board.cell[1].value == board.cell[7].value
            if board.cell[1].value == "X"
                #player[0]player_victory += 1
                winner = "#{players[0].name} a gagné"
                @result = true
                puts "#{players[0].name} a gagné"
            elsif board.cell[1].value == "O"
                # player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                puts "#{players[1].name} a gagné"
            end
        end  

        if board.cell[2].value == board.cell[5].value && board.cell[2].value == board.cell[8].value
            if board.cell[2].value == "X"
                #player[0]player_victory += 1
                winner = "#{players[0].name} a gagné"
                @result = true
                puts "#{players[0].name} a gagné"
            elsif board.cell[2].value == "O"
                #player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                puts "#{players[1].name} a gagné"
            end
        end  

        if board.cell[0].value == board.cell[4].value && board.cell[0].value == board.cell[8].value
            if board.cell[0].value == "X"
                #player[0]player_victory += 1
                winner = "#{players[0].name} a gagné"
                @result = true
                puts "#{players[0].name} a gagné"
            elsif board.cell[0].value == "O"
                #player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                puts "#{players[1].name} a gagné"
            end
        end  

        if board.cell[2].value == board.cell[4].value && board.cell[2].value == board.cell[6].value
            if board.cell[2].value == "X"
                # player[0]player_victory += 1
                winner = "#{players[0].name} a gagné"
                @result = true
                puts "#{players[0].name} a gagné"
            elsif board.cell[2].value == "O"
                #player[1]player_victory += 1
                winner = "#{players[1].name} a gagné"
                @result = true
                puts "#{players[1].name} a gagné"
            end
        end  
    end 
end  


