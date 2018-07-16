require './lib/computer'

class GameBoard
  attr_accessor :original_board
  def initialize
    @welcome_message = "Welcome to the game"
    @original_board =[["A", ".", ".", ".", ".", ".", "."],
                      ["B", ".", ".", ".", ".", ".", "."],
                      ["C", ".", ".", ".", ".", ".", "."],
                      ["D", ".", ".", ".", ".", ".", "."],
                      ["E", ".", ".", ".", ".", ".", "."],
                      ["F", ".", ".", ".", ".", ".", "."],
                      ["G", ".", ".", ".", ".", ".", "."]]
  end

  def display
    @original_board.transpose.each do |r|
      puts r.each { |p| p }.join(" ")
    end
    puts @welcome_message
  end

end
