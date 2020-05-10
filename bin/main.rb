#!/usr/bin/env ruby
require './lib/game.rb'

def display_board(prepared_data, row_separator = '-------------', column_separator = '|')
  prepared_data.each do |rows|
    puts row_separator
    rows.each do |columns|
      print "| #{columns} "
    end
    puts column_separator
  end
end

def player_moves(player_name)
  loop do
    print "#{player_name}, select your move: "
    input = gets.chomp.to_i
    break if input

    print 'Invalid input, try again! '
  end
end

puts 'Welcome to Tic Tac Toe!'
print 'Enter player 1 name: '
name = gets.chomp
player1 = Player.new(name)

print 'Good. Enter player 2 name: '
name = gets.chomp
player2 = Player.new(name)

puts "\nWelcome to Tic Tac Toe!"
puts "Symbol 'X' represents #{player1.name} moves on the game board."
puts "Symbol 'O' represents #{player2.name} moves on the game board."
puts "Select a cell on the gameboard by entering the number displayed in the cell. \nLets Start...\n\n"

board_data = (1..9).to_a
gameboard = Board.new(board_data)
game_data = gameboard.prepare
display_board(game_data)

game = Game.new(game_data)
game_on = true
while game_on
end
