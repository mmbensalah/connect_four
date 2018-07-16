require './lib/board'
require 'pry'

class Computer
  def initialize
    @original_board = original_board
  end

  def comp_makes_a_move
    #output of this method is modified board
    #move_array will = an array i.e. ["A", ".", etc]
    @original_board.sample.reverse.find do |index|
      if index == "."
      index.replace("X")
      end
    end
    return @original_board
  end

end
