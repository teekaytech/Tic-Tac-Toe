class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def move
    # logic to move (play)
  end

  def false_move_message
    "Invalid move by #{name}, try again!"
  end
end
