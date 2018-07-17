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
    puts "Input a capital letter A - G to make a move."
    @player_move = gets.chomp
  end

  def player_move_index(player_move) #player_move_index is index of letter
    row = @board.original_board.find do |element|
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
    @board.original_board.map! do |element|
      if element[0] == row[0]
        element = row
      else
        element
    end
  end
  end

  def format_updated_board
    @board.original_board.transpose.each do |space|
      puts space.each { |x| x }.join(" ")
      end
  end
end
