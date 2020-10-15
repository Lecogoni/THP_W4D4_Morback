
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'
require 'app/boardcase'
require 'app/game'

puts ""
puts " --- WELCOME IN MORBACK : THE GAME --- "
puts ""

puts " Si tu veux jouer presse un n'importe quel touche !! "
#input_game = gets.chomp

puts "Joueur 1 entrer votre nom : "
#input_player1_name = gets.chomp

puts "Joueur 2 entrer votre nom : "
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