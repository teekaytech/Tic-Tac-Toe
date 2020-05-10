#!/usr/bin/env ruby
require './lib/game.rb'

def display_board(prepared_data, row_separator = '-------------')
  puts row_separator
  prepared_data.each_with_index do |data, i|
    print "| #{data} "
    puts "| \n#{row_separator}" if ((i + 1) % 3).zero?
  end
end

def initiate_move(player)
  print "#{player}, select your move: "
  gets.chomp.to_i
end

def false_move_message(player)
  puts "Invalid move by #{player}, try again!"
end

puts 'Welcome to Tic Tac Toe!'
players = 0
player_names = []
while players < 2
  print "Enter player #{players + 1} name: "
  player_names << gets.chomp
  players += 1
end

# Initialize player objects
player1 = Player.new(player_names[0])
player2 = Player.new(player_names[1])

# displaying game/board information
puts "Symbol 'X' represents #{player1.name} moves on the game board."
puts "Symbol 'O' represents #{player2.name} moves on the game board."
puts "Select a cell on the gameboard by entering the number displayed in the cell. \nLets Start...\n\n"

board_data = (1..9).to_a
gameboard = Board.new(board_data)
display_board(board_data)

game = Game.new(board_data)
game_on = game.begin
while game_on
  move = initiate_move(player1.name)
  processed_move = game.validate_move(move, 'X')
  false_move_message(player1.name) if processed_move == false
  display_board(game.moves)

  move = initiate_move(player2.name)
  processed_move = game.validate_move(move, 'O')
  false_move_message(player2.name) if processed_move == false
  display_board(game.moves)

  game_on = game.end if move == 6
end
