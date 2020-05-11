class Game
  attr_accessor :moves

  def initialize(moves)
    @moves = moves
  end

  def begin
    true
  end

  def end
    false
  end

  def check_win
    # logic to check if the current player has won
  end

  def check_draw
    count = 0
    moves.each do |item|
      count += 1 if item.is_a? Integer
    end
    count
    # return true if moves.any?(Integer)

    # false
  end

  def draw_message
    'The game ended in a draw!'
  end

  def validate_move(input, logo)
    return false unless input >= 1 && input <= 9

    return false unless moves.any?(input)

    replace_move(input, logo)
  end

  private

  def replace_move(input, logo)
    temp = 0
    moves.each { |val| temp = moves.index(val) if val == input }
    moves[temp] = logo
    moves
  end
  # def process_move(input)
  # end
end
