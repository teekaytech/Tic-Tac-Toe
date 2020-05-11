#!/usr/bin/env ruby
require './lib/game.rb'
require './lib/player.rb'
require './lib/board.rb'

def initiate_move(player)
  print "#{player}, select your move: "
  gets.chomp.to_i
end

def initiate_check_draw(game, board)
  return true unless game.check_draw == true

  puts board.display_board(game.moves)
  puts game.draw_message
  false
end

def winner(game, player, board)
  return false unless game.increment_rounds >= 5

  return false unless game.check_win

  puts board.display_board(game.moves)
  puts player.win_message
  true
end

puts 'Welcome to Tic Tac Toe!'

print 'Enter player 1 name: '
player1 = Player.new(gets.chomp)
print 'Enter player 2 name: '
player2 = Player.new(gets.chomp)

puts "Symbol #{player1.icon} represents #{player1.name} moves on the game board."
puts "Symbol #{player2.icon} represents #{player2.name} moves on the game board."
puts "Select a cell on the gameboard by entering the number displayed in the cell. \nLets Start...\n\n"

loop do
  board_data = (1..9).to_a
  game = Game.new(board_data)
  game_on = true
  board = Board.new(board_data)

  while game_on
    puts board.display_board(game.moves)
    loop do
      move = initiate_move(player1.name)
      processed_move = game.validate_move(move, player1.icon)
      break unless processed_move == false

      puts player1.false_move_message
      puts board.display_board(game.moves)
    end
    game.increment_rounds
    break if winner(game, player1, board)

    break unless initiate_check_draw(game, board) == true

    loop do
      puts board.display_board(game.moves)
      move = initiate_move(player2.name)
      processed_move = game.validate_move(move, player2.icon)
      break unless processed_move == false

      puts player2.false_move_message
    end
    game.increment_rounds
    break if winner(game, player2, board)

    break unless initiate_check_draw(game, board) == true
  end

  print "Will you like to replay? ('Y' = yes, 'N' = No): "
  break if gets.chomp.upcase == 'N'
end
