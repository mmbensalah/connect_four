require './lib/board'
require './lib/player'

require 'pry'

class Computer
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def comp_makes_a_move
    #output of this method is modified board
    #move_array will = an array i.e. ["A", ".", etc]
    @board.sample.reverse.find do |index|
      if index == "."
      index.replace("O")
      end
    end
    @board
  end

  end
