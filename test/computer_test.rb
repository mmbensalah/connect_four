require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/computer'

class ComputerTest < Minitest::Test
  def test_it_exists
    board = GameBoard.new(board)
    computer = Computer.new(board)

    assert_instance_of Computer, computer
  end

  def test_comp_makes_a_move
    board = GameBoard.new(board)
    computer = Computer.new(board)

    expected = [["A", ".", ".", ".", ".", ".", "."],
                ["B", ".", ".", ".", ".", ".", "O"],
                ["C", ".", ".", ".", ".", ".", "."],
                ["D", ".", ".", ".", ".", ".", "."],
                ["E", ".", ".", ".", ".", ".", "."],
                ["F", ".", ".", ".", ".", ".", "."],
                ["G", ".", ".", ".", ".", ".", "."]]
    actual = computer.comp_makes_a_move

    assert_equal expected, actual
  end
end
