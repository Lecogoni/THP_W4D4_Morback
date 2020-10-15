require "pry"

class Game

    attr_accessor :p1name, :p2name, :board, :players, :result, :game_turn, :data_check, :player_ongoing

# -- initalisation d'un game, qui initialise avec lui 1 board, 2 players placés dans un Array : players

    def initialize(input_player1_name,input_player2_name)

        @p1name = input_player1_name
        @p2name = input_player2_name
        @players = [
        Player.new(p1name, "X"),
        Player.new(p2name, "O")]

        @board = Board.new
        
        @result = false
        @game_turn = 0
        @data_check = false
        @player_ongoing = 0
    end

# -- méthode, boucle déroule jeu - 5 boucles, chacunes font jouer le joueur 1 puis 2.  @game_turn s'incrémente a chaque action de joueur. Arriver à neuf action de joueur ==> sortie de boucle. le controle des victoires est lancé apres chaque jouer.

    def game_on

        5.times do |i|
            # -- joueur 1
            @game_turn += 1
            round(players[0])# -- appel de la méthode round()
            check_result
            break if result == true
            break if @game_turn == 9
            # -- joueur 2
            @game_turn += 1
            round(players[1])# -- appel de la méthode round()
            check_result
            break if result == true
        end   
        # -- sortie de boucle
        if result == true
            puts @winner
        else 
            puts "               MATCH NUL"
            #puts show_player_status
        end
    end

# Méthode qui appel un input du joueur, et appel la fonction qui va vérifier si cette case est libre 

    def round(player)
        @player_ongoing = player
        puts ""
        puts ">> #{player.name.upcase}, c'est ton tour, dans quelle case veux tu jouer ? "
        input_player = gets.chomp
        check_input_player_is_empty(input_player) 
    end

#pren l'input du player et compare avec la Key du array cell. Lorsque la valeur entrer par le joeur est égale au nom d'une key / d'un boardcase la value de la boardcase est remplacé par le sign du joeur. Si case n'est pas vide, le process recommence depuis la méthode round()

    def check_input_player_is_empty(input_player)
        number = 0
        board.cell.each do |cellule|
             if input_player == cellule.name
                if cellule.value != " " # reprise méthode round if la case est pas cide
                    system "clear"
                    puts ""
                    puts "CETTE CASE N'EST PAS VIDE ESSAIE ENCORE ! essaie encore"
                    puts ""
                    board.show_board
                    round(player_ongoing)
                else
                    cellule.value = "#{@player_ongoing.sign}"
                end
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
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[0].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  

        if board.cell[3].value == board.cell[4].value && board.cell[3].value == board.cell[5].value
            if board.cell[3].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[3].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  

        if board.cell[6].value == board.cell[7].value && board.cell[6].value == board.cell[8].value
            if board.cell[6].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[6].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  

        if board.cell[0].value == board.cell[3].value && board.cell[0].value == board.cell[6].value
            if board.cell[0].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[0].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  

        if board.cell[1].value == board.cell[4].value && board.cell[1].value == board.cell[7].value
            if board.cell[1].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[1].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  

        if board.cell[2].value == board.cell[5].value && board.cell[2].value == board.cell[8].value
            if board.cell[2].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[2].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  

        if board.cell[0].value == board.cell[4].value && board.cell[0].value == board.cell[8].value
            if board.cell[0].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[0].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  

        if board.cell[2].value == board.cell[4].value && board.cell[2].value == board.cell[6].value
            if board.cell[2].value == "X"
                players[0].player_victory += 1 
                @result = true
                @winner = "\n\n                #{players[0].name.upcase} A GAGNÉ !!!!!!"
            elsif board.cell[2].value == "O"
                players[1].player_victory += 1
                @result = true
                @winner = "\n\n                #{players[1].name.upcase} A GAGNÉ !!!!!!"
            end
        end  
    end 

# Méthode pour vérifier si les valeurs enter par le joueur correspondent à une case existante. Si valeur non existante return false
    def check_player_input(input)
        input_to_check = input.downcase
        data = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3" ]
        
        data.each do |i|
            if input_to_check != i
                @data_check = false
            end
        end
        @data_check =  true
    end



end  


