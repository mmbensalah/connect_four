require './lib/board'
require './lib/player'
# require './lib/computer'

def start_game
  board = GameBoard.new
  board.display
  player = Player.new(board)
  player_input = player.input_move #B
  row = player.player_move_index(player_input)#["B", ".", ".", ".", ".", ".", "."]
  updated_row = player.update_row(row)
  final_board = player.update_board(updated_row)
  formatted_board = player.format_updated_board#whole board updated
end


# def player_move
#   #B
#
# end


start_game
# player_move



# def play_game
#   computer = Computer.new
#   computer.comp_makes_a_move
# end

# puts start_game
# puts play_game
# # array = Array.new(5) {Array.new(10, .)}
# #
# # array.each { |x| puts x.join (" ")}
#
# # my_table = {
# #   "line0" = ["A", "B", "C", "D", "E", "F", "G"],
# #   line1: ["1", "2", "3", "4", "5", "6", "7"],
# #   line2: ["1", "2", "3", "4", "5", "6", "7"],
# #   line3: ["1", "2", "3", "4", "5", "6", "7"],
#   line4: ["1", "2", "3", "4", "5", "6", "7"],
#   line5: ["1", "2", "3", "4", "5", "6", "7"],
#   line6: ["1", "2", "3", "4", "5", "6", "7"]
# }

# line0 = ["A", "B", "C", "D", "E", "F", "G"]
# line1 = [".", ".", ".", ".", ".", ".", "."]

# original_board=[["A", ".", ".", ".", ".", ".", "."],
#                 ["B", ".", ".", ".", ".", ".", "."],
#                 ["C", ".", ".", ".", ".", ".", "."],
#                 ["D", ".", ".", ".", ".", ".", "."],
#                 ["E", ".", ".", ".", ".", ".", "."],
#                 ["F", ".", ".", ".", ".", ".", "."],
#                 ["G", ".", ".", ".", ".", ".", "."]]
# output_board_2 = game_board_1.transpose
#
# game_board_2.each do |r|
#   puts r.each { |p| p }.join(" ")
# end

# input A
# find A
# return index
# iterate over index starting at -1
# if == ".", gsub ("X")
# puts game_board_2[0]
# puts game_board_1[0]

# $stdout.sync = true
#
# 100.times do
#   print "."
#   sleep 1
# end
