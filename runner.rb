require './lib/connect_four'

play = ConnectFour.new
play.display
play.pass_in_board

42.times do
   play.start_game_player
   play.format_it
   play.continue_game_computer
   play.format_it
   if play.win_vertical == true
     break
   end
   if play.win_horizontal == true
     break
   end
end
