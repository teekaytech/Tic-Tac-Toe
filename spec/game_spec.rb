require './lib/game'

describe Game do
  let(:moves) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:game) { Game.new(moves) }
  let(:player) { Player.new('name') }

  describe '#increment_rounds' do
    it 'returns the value of @rounds variable' do
      expect(game.increment_rounds).to eql(game.rounds)
    end
  end

  describe '#check_win' do
    let(:horizontal_1) { Game.new(['X', 'X', 'X', 4, 5, 6, 7, 8, 9]) }
    let(:horizontal_2) { Game.new(['0', '2', 'O', 'X', 'X', 'X', 7, 8, 9]) }
    let(:horizontal_3) { Game.new(['0', 2, 'O', 'X', 5, 6, 'X', 'X', 'X']) }
    let(:vertical_1) { Game.new(['O', 'X', 3, 'O', 'X', 6, 'O', 8, 9]) }
    let(:vertical_2) { Game.new([1, 'O', 'X', 4, 'O', 'X', 7, 'O', 9]) }
    let(:vertical_3) { Game.new([1, 'X', 'O', 4, 'X', 'O', 7, 8, 'O']) }
    let(:diagonal_1) { Game.new(['O', 'X', 3, 4, 'O', 'X', 7, 8, 'O']) }
    let(:diagonal_2) { Game.new(['X', 2, 'O', 4, 'O', 6, 'O', 8, 'X']) }

    it 'returns false because there are no moves yet' do
      expect(game.check_win).to be false
    end

    context 'if the current move (X) results to a horizontal win' do
      it 'returns true, case 1' do
        expect(horizontal_1.check_win).to be true
      end

      it 'returns true, case 2' do
        expect(horizontal_2.check_win).to be true
      end

      it 'returns true, case 3' do
        expect(horizontal_3.check_win).to be true
      end
    end

    context 'if the current move (0) results to a vertical win' do
      it 'returns true for case 1' do
        expect(vertical_1.check_win).to be true
      end

      it 'returns true for case 2' do
        expect(vertical_2.check_win).to be true
      end

      it 'returns true for case 3' do
        expect(vertical_3.check_win).to be true
      end
    end

    context 'if the current move (0) results to any of the diagonal move(s)' do
      it 'returns true for case 1' do
        expect(diagonal_1.check_win).to be true
      end

      it 'returns true for case 2' do
        expect(diagonal_2.check_win).to be true
      end
    end
  end

  describe '#check_draw' do
    let(:draw) { Game.new(%w[X O X X O X O X O]) }

    context 'if there is no winner' do
      it 'returns false because all moves are still valid' do
        expect(game.check_draw).to be false
      end

      it 'returns false if there are no more valid moves' do
        expect(draw.check_draw).to be true
      end
    end
  end

  describe '#draw_message' do
    it 'returns a draw message when the game ends in a draw' do
      expect(game.draw_message).to eql('The game ended in a draw!')
    end
  end

  describe '#validate_move' do
    let(:all) { ['X', 2, 3, 4, 5, 6, 7, 8, 9] }
    let(:gm) { Game.new(all) }

    it 'returns false if the player move is not within 1 - 9' do
      expect(game.validate_move(10, 'X')).to be false
    end

    it 'returns false if the player move valid but not available in the moves array' do
      expect(gm.validate_move(1, 'X')).to be false
    end

    it 'returns an array of updated moves' do
      expect(gm.validate_move(9, 'X')).to eql(['X', 2, 3, 4, 5, 6, 7, 8, 'X'])
    end
  end
end
