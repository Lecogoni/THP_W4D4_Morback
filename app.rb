
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'
require 'app/boardcase'
require 'app/game'

# ----------------- ACCUEIL -----------------

puts ""
puts "                      -----------------------------------------"
puts "                      |     WELCOME IN MORBACK : THE GAME     |"
puts "                      -----------------------------------------"
puts ""
puts ""
puts " Si tu veux jouer presse n'importe quel touche !! De toutes façons il n'y pas le choix alors go on joue "
puts ""
print ">"
input_game = gets.chomp

# -- demande le nom du premier joueur

puts "Joueur 1 entrer votre nom : "
print ">>> "
input_player1_name = gets.chomp

# -- demande le nom du second joueur

puts ""
puts "Joueur 2 entrer votre nom : "
print ">>> "
input_player2_name = gets.chomp


# -- initialize un nouveau Game

game1 = Game.new(input_player1_name, input_player2_name)

# -- présente le board vide

game1.board.show_board

puts ""
puts "Voici le board, pour jouer entre la valeur d'une case, par ex. a1, B2 ou encore c3 "

# -- puis lance une partie méthode game_on

game1.game_on

binding.pry