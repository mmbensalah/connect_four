class GameBoard
  attr_accessor
  def initialize
    @welcome_message = "Welcome to the game"
    @original_board =[["A", ".", ".", ".", ".", ".", "."],
                    ["B", ".", ".", ".", ".", ".", "."],
                    ["C", ".", ".", ".", ".", ".", "."],
                    ["D", ".", ".", ".", ".", ".", "."],
                    ["E", ".", ".", ".", ".", ".", "."],
                    ["F", ".", ".", ".", ".", ".", "."],
                    ["G", ".", ".", ".", ".", ".", "."]]
    @output_board = @original_board.transpose

    @output_board.each do |r|
      puts r.each { |p| p }.join(" ")
    end
  end

  def display
    puts @welcome_message
    # puts @output_board
  end


end
