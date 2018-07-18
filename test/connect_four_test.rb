require 'minitest/autorun'
require 'minitest/pride'
require './lib/connect_four'

require 'pry'

class ConnectFourTest < Minitest::Test
  def test_it_exists
    game = ConnectFour.new
    assert_instance_of ConnectFour, game
  end
end
