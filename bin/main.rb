#!/usr/bin/env ruby

puts 'Welcome to Tic Tac Toe!'
print 'Enter player 1 name: '
player_one = gets.chomp

print 'Good. Enter player 2 name: '
player_two = gets.chomp

puts "\nPlayer 1 is #{player_one} using symbol X. \nPlayer 2 is #{player_two} using symbol O. \n\nLet's Play!"

# A game board will be displayed to the user, consisting of numbers from 1 to 9 (valid moves)
moves = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# We also have arrays that stores the values of selected moves by the players
p1_move = []
p2_move = []

winning_logic = true # this logic consists of instructions for determining if a move wins the game or ends in draw.
game_on = true # this will be used to terminate the loop.
puts "\nWith each boxes displayed from 1 to 9, each player can type in a value >=1 and <=9"

while game_on
  p moves # displays the board for the first player
  print "#{player_one}, select your move: "
  input = gets.chomp.to_i
  # the check below ensures that user input is within 1 - 9 to be displayed on the board
  if moves.any?(input)
    # After a move, a check is run to see if the move have selected. If not, the move is displayed on the board
    puts 'Valid Move!'
    p1_move << input
    temp = 0
    moves.each { |val| temp = moves.index(val) if val == input }
    moves[temp] = 'X'
    # displays updated game board for the next player to select his/her move.
  else
    print 'Invalid move, try again! '
  end
  # the above if statement is looped and counted as a single move until the player selects a valid move.

  p moves # displays the board for the second player
  print "#{player_two}, select your move: "
  input = gets.chomp.to_i
  if moves.any?(input)
    puts 'Valid Move!'
    p2_move << input
    temp = 0
    moves.each { |val| temp = moves.index(val) if val == input }
    moves[temp] = 'O'
  else
    print 'Invalid move, try again! '
  end
  # the code above (line 37 - 44) is synonymous to line 24 - 34.
  # When implementing the logic, it will be used as a method

  game_on = false if p1_move == winning_logic || p2_move == winning_logic
  # the above logic will be elaborated in the next milestone.

  # If there is no winner and all rounds have passed, we return draw and end the game
  if moves.any?(Integer) == false
    game_on = false
    puts 'The game ended in a draw!'
  end
end

puts "#{player_one} here are your moves: #{p1_move}"
puts "#{player_two} here are your moves: #{p2_move}"

# After all the rounds, we check if there is a match vertically,horizontally or diagonally.

# If there is a match in any of the moves by either player, we announce the player as the winner.

# If there is no match, we announce the encounter as draw.

# We have to confirm if the players will like to play again. If true, we loop the game, else we stop.
