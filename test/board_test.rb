require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require 'pry'

class GameBoardTest < Minitest::Test
  def test_it_exists
    board = GameBoard.new(board)
    assert_instance_of GameBoard, board
  end

  def welcome_message
    board = GameBoard.new(board)
    assert_equal "Welcome to the game", board.message
  end

  def format_it
    board = GameBoard.new(board)
    expected = [["A", "B", "C", "D", "E", "F", "G"],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."]]

    actual = game.format_it

    assert equal expected, actual
  end
end
