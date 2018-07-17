require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/board'
require 'pry'

class PlayerTest < Minitest::Test
  def test_it_exists
    player = Player.new(:board)
  end

  def test_input_move
    player = Player.new(:board)
    assert_equal "B", player.input_move
  end

  def test_player_move_index
    game = GameBoard.new
    player = Player.new(game)

    expected = ["B", ".", ".", ".", ".", ".", "."]
    actual = player.player_move_index("B")

    assert_equal expected, actual
  end

  def test_update_row
    game = GameBoard.new
    player = Player.new(game)

    expected = ["B", ".", ".", ".", ".", ".", "X"]
    actual = player.update_row(["B", ".", ".", ".", ".", ".", "."])
    assert_equal expected, actual
  end

  def test_update_board
    game = GameBoard.new
    player = Player.new(game)

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
