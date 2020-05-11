class Player
  attr_accessor :name, :no_of_obj

  def initialize(name, val = 1)
    @name = name
    @no_of_obj = val
  end

  def moves
    # logic to move (play)
  end

  def icon
    @no_of_obj == 1 ? 'X' : 'O'
  end

  def false_move_message
    "Invalid move by #{name}, try again!"
  end

  def win_message
    "Congratulations!!! #{name} is the Winner..."
  end
end
