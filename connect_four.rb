require './lib/board'
require './lib/player'
require './lib/computer'
require 'pry'


class ConnectFour

  def initialize
    @board = GameBoard.new
  end

  def display
    @board.message
    @board.format_it
  end

  def pass_in_board
    gameboard = GameBoard.new
    @board = gameboard.board
  end

  def start_game_player
    player = Player.new(@board)
    player_input = player.input_move #B
    row = player.player_move_index(player_input)#["B", ".", ".", ".", ".", ".", "."]
    updated_row = player.update_row(row)#["B", ".", ".", ".", ".", ".", "X"]
    final_board = player.update_board(updated_row)
    formatted_board = player.format_updated_board
    @board = formatted_board #whole board updated
  end

  def continue_game_computer
    computer = Computer.new(@board)
    computer_move = computer.comp_makes_a_move
    computer_board = computer.format_board
    @board = computer_board
  end

  # def space? #false
  #   @board.any? do |row|
  #     row.include?(".")
  #   end
  # end



  # def play
  #   while space? == true do
  #     go_around
  #     end
  # end

end


play = ConnectFour.new
play.display
play.pass_in_board
play.start_game_player
play.continue_game_computer
play.start_game_player
play.continue_game_computer
play.start_game_player
play.continue_game_computer
