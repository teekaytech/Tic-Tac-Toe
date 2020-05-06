#!/usr/bin/env ruby

puts 'Welcome to Tic Tac Toe!'
print 'Enter player 1 name: '
player_one = gets.chomp

print 'Good. Enter player 2 name: '
player_two = gets.chomp

puts "\nPlayer 1 is #{player_one} using symbol X. \nPlayer 2 is #{player_two} using symbol O. \n\nLet's Play!"

# A game board will be displayed to the user, consisting of numbers from 1 to 9

# We also have arrays that stores the values of selected moves by the players
p1_move = []
p2_move = []

puts "\nWith each boxes displayed from 1 to 9, each player can type in a value >=1 and <= 9"

count = 0
while count < 9
  if count.even?
    loop do
      print "#{player_one}, select your move: "
      input = gets.chomp.to_i
      # the check below ensures that user input is within 1 - 9 to be displayed on the board
      if (input >= 1) && (input <= 9)
        p1_move << input
        # After a move, a check is run to see if the move have selected. If not, the move is displayed on the board
        break
      else
        print 'Invalid input, try again! '
      end
    end
  else
    loop do
      print "#{player_two}, select your move: "
      input = gets.chomp.to_i
      if (input >= 1) && (input <= 9)
        p2_move << input
        break
      else
        print 'Invalid input, try again! '
      end
    end
  end
  count += 1
end

p p1_move
p p2_move
# puts "#{player_one} moves are: #{p1_move} \n #{player_two} moves are: "
