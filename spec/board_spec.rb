require './lib/board'

describe Board do
  let(:moves_1) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:moves_2) { ['X', 2, 'O', 4, 'O', 6, 'O', 8, 'X'] }
  let(:board1) { Board.new(moves_1) }
  let(:board2) { Board.new(moves_2) }

  describe '#display_board' do
    it 'returns if the board to be displayed in is not a string' do
      expect(board1.display_board(moves_1).class).not_to be_a(String)
    end

    it 'returns if the board is a terminal table instance with different dataset' do
      expect(board2.display_board(moves_2).class).to eql(Terminal::Table)
    end
  end
end
