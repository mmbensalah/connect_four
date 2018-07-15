require 'minitest/autorun'
require 'minitest/pride'
require './lib/board_class'
require 'pry'

class GameBoardTest < Minitest::Test
  def test_it_exists
    board = GameBoard.new
    assert_instance_of GameBoard, board
  end
end
