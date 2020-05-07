class Game
  attr_accessor :status

  def initialize(status)
    @status = status
  end

  def start
    # logic to start the game
  end

  def end
    # logic to end the game
  end

  def check_win
    # logic to check if the current player has won
  end

  def check_move
    # checking if move is valid
  end
end

class Player
  attr_accessor :pl1, :pl2

  def initialize(pl1, pl2)
    @pl1 = pl1
    @pl2 = pl2
  end

  def move
    # logic to move (play)
  end
end

class Board
  attr_accessor :b_values
  def initialize(values)
    @b_calues = values
  end

  def display(values)
    # logic to display board values
  end

  def reload
    # logic to re-initialize the board values
  end
end