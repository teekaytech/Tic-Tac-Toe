class Player
  @no_of_obj = 0
  attr_accessor :name

  def initialize(name, val = 1)
    @name = name
    @no_of_obj = val
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
