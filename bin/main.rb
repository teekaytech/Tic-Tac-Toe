#!/usr/bin/env ruby
require './lib/game.rb'
require './lib/board.rb'
require './lib/player.rb'

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

game = Game.new(board_data)
game_on = game.begin
while game_on
  display_board(game.moves)

  loop do
    move = initiate_move(player1.name)
    processed_move = game.validate_move(move, 'X')
    break unless processed_move == false

    puts player1.false_move_message
    display_board(game.moves)
  end

  puts 'check' if game.check_draw >= 5

  loop do
    display_board(game.moves)
    move = initiate_move(player2.name)
    processed_move = game.validate_move(move, 'O')
    break unless processed_move == false

    puts player2.false_move_message
  end
  puts 'check' if game.check_draw >= 5
end

puts game.draw_message if game_on == false
