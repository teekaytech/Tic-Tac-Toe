module Game
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

  def process_move
    # contains logic for processing moves.
  end
end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def move
    # logic to move (play)
  end
end

class Board
  attr_accessor :b_values

  def initialize(values)
    @b_values = values
  end

  def prepare
    multi_arr = []
    sub_arr = []
    count = 0
    b_values.each do |val|
      sub_arr.push(val)
      count += 1
      if count == 3
        multi_arr.push(sub_arr)
        count = 0
        sub_arr = []
      end
    end
    multi_arr
  end


  def reload
    # logic to re-initialize the board values
  end
end
