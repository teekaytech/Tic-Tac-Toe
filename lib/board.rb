require 'terminal-table'

class Board
  attr_accessor :moves

  def initialize(moves)
    @moves = moves
  end

  def d_board
    table = Terminal::Table.new do |t|
      t << ['One', 1]
      t << :separator
      t.add_row ['Two', 2]
      t.add_separator
      t.add_row ['Three', 3]
    end
  end
end
