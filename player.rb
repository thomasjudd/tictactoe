require './board'

class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def get_turn()
    move = {}
    puts "get x coordinate"
    x = gets.chomp
    puts "get y coordinate"
    y = gets.chomp
    move['x'] = x
    move['y'] = y
    return move
  end
end
