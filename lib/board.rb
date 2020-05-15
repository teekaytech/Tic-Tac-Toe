require 'terminal-table'

class Board
  attr_reader :moves

  def initialize(moves)
    @moves = moves
  end

  def display_board(moves)
    table = Terminal::Table.new do |t|
      t << [moves[0], moves[1], moves[2]]
      t << :separator
      t.add_row [moves[3], moves[4], moves[5]]
      t.add_separator
      t.add_row [moves[6], moves[7], moves[8]]
    end
    table
  end
end

bd = Board.new([1,2,3,4,5,6,7,8,9])
puts bd.display_board([1,2,3,4,5,6,7,8,9])
puts bd.display_board([1,2,3,4,5,6,7,8,9]).class