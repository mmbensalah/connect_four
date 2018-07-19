require './lib/computer'

class GameBoard
  attr_accessor :board
  
  def initialize(board)
    @welcome_message = "Welcome to the game"
    @board =   [["A", ".", ".", ".", ".", ".", "."],
                ["B", ".", ".", ".", ".", ".", "."],
                ["C", ".", ".", ".", ".", ".", "."],
                ["D", ".", ".", ".", ".", ".", "."],
                ["E", ".", ".", ".", ".", ".", "."],
                ["F", ".", ".", ".", ".", ".", "."],
                ["G", ".", ".", ".", ".", ".", "."]]
  end
  def message
    puts @welcome_message
  end

  def format_it
    @board.transpose.each do |row|
      puts row.each { |p| p }.join(" ")
    end
  end
end
