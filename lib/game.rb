class Game
  attr_accessor :moves, :rounds

  def initialize(moves)
    @moves = moves
    @rounds = 0
  end

  def increment_rounds
    @rounds += 1
  end

  def check_win
    win_move_positions = [
      [0, 1, 2],
      [0, 3, 6],
      [0, 4, 8],
      [1, 4, 7],
      [2, 4, 6],
      [2, 5, 8],
      [3, 4, 5],
      [6, 7, 8]
    ]
    return true if win_logic(win_move_positions)

    false
  end

  def check_draw
    count = 0
    moves.each do |item|
      count += 1 if item.is_a? Integer
    end
    count.positive? ? false : true
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

  def win_logic(win_move_positions)
    win_status = false
    win_move_positions.each do |win_move|
      first = moves[win_move[0]]
      second = moves[win_move[1]]
      third = moves[win_move[2]]
      win_status = true if (!first.is_a? Integer) && (first == second) && (second == third)
    end
    win_status
  end
end
