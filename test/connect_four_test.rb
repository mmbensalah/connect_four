require 'minitest/autorun'
require 'minitest/pride'
require './lib/connect_four'

require 'pry'

class ConnectFourTest < Minitest::Test
  def test_it_exists
    game = ConnectFour.new
    assert_instance_of ConnectFour, game
  end

  def test_display
    board = GameBoard.new(board)
    game = ConnectFour.new

    expected = [["A", "B", "C", "D", "E", "F", "G"],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."]]
    actual = game.display

    assert_equal expected, actual
  end

  def test_start_game_player
    game = ConnectFour.new
    board = GameBoard.new(board)
    player = Player.new(board)

    actual = game.start_game_player
    expected = [["A", "B", "C", "D", "E", "F", "G"],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", "X", ".", ".", ".", ".", "."]]

    assert_equal expected, actual
  end

  def test_start_game_player
    game = ConnectFour.new
    board = GameBoard.new(board)
    player = Player.new(board)

    actual = game.start_game_player
    expected = [["A", "B", "C", "D", "E", "F", "G"],
                [".", ".", ".", ".", ".", ".", "."],
                [".", ".", ".", ".", ".", ".", "."],
                [".", "X", ".", ".", ".", ".", "."],
                [".", "X", ".", ".", ".", ".", "."],
                [".", "X", ".", ".", ".", ".", "."],
                [".", "X", ".", ".", ".", ".", "."]]

    assert_equal expected, actual
  end
end
