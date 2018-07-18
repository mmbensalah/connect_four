require './lib/board'
require './lib/computer'
require 'pry'

class Player
  attr_reader :player_move, :board

  def initialize(board)
    @player_move = player_move
    @board = board
  end

  def input_move #input_move is "B" i.e.
    puts "Input a capital letter A - G to make a move. DO IT NOW!"
    @player_move = gets.chomp
  end

  def player_move_index(player_move) #player_move_index is index of letter
    row = @board.find do |element|
      element[0] == player_move
    end
    row
  end

  def update_row(row)
    row.reverse.find do |index|
      if index == "."
      index.replace("X")
      end
    end
    row
  end

  def update_board(row)
    @board.map! do |element|
      if element[0] == row[0]
        element = row
      else
        element
    end
  end
  end

end
