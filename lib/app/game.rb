require "pry"

class Game

    attr_accessor :p1name, :p2name, :board, :players, :result, :game_turn, :data_check

    def initialize(input_player1_name,input_player2_name)

        @p1name = input_player1_name
        @p2name = input_player2_name
        @board = Board.new
        @result = false
        @game_turn = 0
        @data_check = false

        @players = [
        Player.new(p1name, "X"),
        Player.new(p2name, "O")]
    end

    def game_on

        5.times do |i|
            @game_turn += 1
            round(players[0])
            check_result
            
            break if result == true
            break if @game_turn == 9
            
            @game_turn += 1
            round(players[1])
            check_result

            break if result == true
        end   
        
        if result == true
            puts @winner
            #puts show_player_status
        else 
            puts "Match Nul"
            #puts show_player_status
        end
    end

    def round(player)
        puts ""
        puts "#{player.name.upcase}, c'est ton tour, dans quelle case veux tu jouer ? "

        while check_player_input != true
            input_player_round = gets.chomp
            check_player_input(input_player_round)
        end
        number = 0
        board.cell.each do |cellule|
             if input_player_round == cellule.name
                cellule.value = "#{player.sign}"
             end
             number += 1
        end
        board.show_board
    end

# Méthode pour vérifier si il y a un 3 lignes ayant la même valeurs. Si oui @result return True

    def check_result

        @result = ""
        @winner = ""

        if board.cell[0].value == board.cell[1].value && board.cell[0].value == board.cell[2].value
            if board.cell[0].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[0].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[3].value == board.cell[4].value && board.cell[3].value == board.cell[5].value
            if board.cell[3].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[3].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[6].value == board.cell[7].value && board.cell[6].value == board.cell[8].value
            if board.cell[6].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[6].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[0].value == board.cell[3].value && board.cell[0].value == board.cell[6].value
            if board.cell[0].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[0].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[1].value == board.cell[4].value && board.cell[1].value == board.cell[7].value
            if board.cell[1].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[1].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[2].value == board.cell[5].value && board.cell[2].value == board.cell[8].value
            if board.cell[2].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[2].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[0].value == board.cell[4].value && board.cell[0].value == board.cell[8].value
            if board.cell[0].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[0].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  

        if board.cell[2].value == board.cell[4].value && board.cell[2].value == board.cell[6].value
            if board.cell[2].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "#{players[0].name} a gagné"
            elsif board.cell[2].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "#{players[1].name} a gagné"
            end
        end  
    end 

# Méthode pour vérifier si les valeurs enter par le joueur correspondent à une case existante. Si valeur non existante return false.
    def check_player_input(input)
        input_to_check = input.downcase
        data = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3" ]

        data.each do |i|
            if input_to_check != i
                puts "la valeur entrée n'est pas conforme"
            end
        end
        return true
    end



end  


