require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/board'
require 'pry'

class PlayerTest < Minitest::Test
  def test_it_exists
    board = GameBoard.new(board)
    player = Player.new(board)

    assert_instance_of Player, player
  end

  def test_input_move
    board = GameBoard.new(board)
    player = Player.new(board)

    assert_equal "B", player.input_move
  end

  def test_player_move_index
    skip
    board = GameBoard.new(board)
    player = Player.new(board)

    expected = ["B", ".", ".", ".", ".", ".", "."]
    actual = player.player_move_index("B")

    assert_equal expected, actual
  end

  def test_update_row
    board = GameBoard.new(board)
    player = Player.new(board)

    expected = ["B", ".", ".", ".", ".", ".", "X"]
    actual = player.update_row(["B", ".", ".", ".", ".", ".", "."])
    assert_equal expected, actual
  end

  def test_update_board
    skip
    board = GameBoard.new(board)
    player = Player.new(board)
    player.update_row(["B", ".", ".", ".", ".", ".", "X"])

    expected = [["A", ".", ".", ".", ".", ".", "."],
                ["B", ".", ".", ".", ".", ".", "X"],
                ["C", ".", ".", ".", ".", ".", "."],
                ["D", ".", ".", ".", ".", ".", "."],
                ["E", ".", ".", ".", ".", ".", "."],
                ["F", ".", ".", ".", ".", ".", "."],
                ["G", ".", ".", ".", ".", ".", "."]]
    actual = player.update_board(["B", ".", ".", ".", ".", ".", "X"])

    assert_equal expected, actual
  end

end
