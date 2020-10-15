
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'
require 'app/boardcase'
require 'app/game'


puts " Press enter pour jouer ? "
#input_game = gets.chomp

puts "enter player 1 name : "
#input_player1_name = gets.chomp

puts "enter player 2 name : "
#input_player2_name = gets.chomp

game1 = Game.new("nico", "ed")

game1.game_on






#board.show_board

# --> player1 joue ---------

# puts ""
# puts "player 1 choose a box :"
#player1_input = gets.chomp

#player1.play("a1")



binding.pry