
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'
require 'app/boardcase'
require 'app/game'

# --> init player 1 ---------------------
#puts "enter player 1 name : "
#input_player1_name = gets.chomp

player1 = Player.new("Nico", "X")

# --> init player 1 ---------------------

#puts "enter player 2 name : "
#input_player2_name = gets.chomp

player2 = Player.new("Loupa", "O")

# --> show_player_status Recap victory ---------------------

puts ""
puts player1.show_player_status
puts player2.show_player_status

# --> create the board + BoardCase and show the board ---------

board = Board.new


#board.show_board

# --> player1 joue ---------

# puts ""
# puts "player 1 choose a box :"
# player1_input = gets.chomp

# play(player1_input)

binding.pry