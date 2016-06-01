require './player'
require './board'

game_over = false

player1 = Player.new("P1")
player2 = Player.new("P2")

while game_over == false
  Board.display_board()

  move = player1.get_turn()
  Board.apply_move(player1.name, move)

  game_over = Board.check_winner()
  break if game_over

  Board.display_board()

  move = player2.get_turn()
  Board.apply_move(player2.name, move)

  game_over = Board.check_winner()
end
