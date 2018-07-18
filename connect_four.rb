require './lib/board'
require './lib/player'
require './lib/computer'
require 'pry'

class ConnectFour

  def initialize
    @board = GameBoard.new(@board)
  end

  def display
    @board.message
    @board.format_it
  end

  def pass_in_board
    gameboard = GameBoard.new(@board)
    @board = gameboard.board
  end

  def start_game_player
    player = Player.new(@board)
    player_move = player.input_move #B
    row = player.player_move_index(player_move)#["B", ".", ".", ".", ".", ".", "."]
    updated_row = player.update_row(row)#["B", ".", ".", ".", ".", ".", "X"]
    player_board = player.update_board(updated_row)
    @board = player_board
  end

  def continue_game_computer
    computer = Computer.new(@board)
    computer_move = computer.comp_makes_a_move
    @board = computer_move
  end

  def format_it
    @board.transpose.each do |r|
      puts r.each { |p| p }.join(" ")
    end
    @board
  end

  def win_vertical
    if @board.join.include?("XXXX")
      puts "WIN"
    end
  end

  def win_horizontal
    if @board.transpose.join.include?("XXXX")
      puts "WIN"
    end
  end

end


play = ConnectFour.new
play.display
play.pass_in_board


10.times do
   play.start_game_player
   play.format_it
   play.continue_game_computer
   play.format_it
   play.win_vertical
   play.win_horizontal
end





# play.start_game_player
# play.format_it
#
# play.continue_game_computer
# play.format_it
#
# play.start_game_player
# play.format_it
#
# play.continue_game_computer
# play.format_it
#
#
# play.start_game_player
# play.format_it
# play.continue_game_computer
# play.format_it
# play.start_game_player
# play.format_it
# play.continue_game_computer
# play.format_it
