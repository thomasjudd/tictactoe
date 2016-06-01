class Board
  @@board = Array.new(3){ Array.new(3) }

  def self.display_board
    @@board.each{|row|
      row.each{|item|
        print "|"
        if item != nil
          print item
        else
          print "  "
        end
        print "|"
      }
      print "\n"
    }
  end

  def self.check_winner
    if @@board[0][0] == @@board[0][1] and @@board[0][0] == @@board[0][2] and @@board[0][0] != nil
      puts "#{@@board[0][0]} wins!"
      return true
    elsif @@board[0][0] == @@board[1][0] and @@board[0][0] == @@board[2][0] and @@board[0][0] != nil
      puts "#{@@board[0][0]} wins!"
      return true
    elsif @@board[0][0] == @@board[1][1] and @@board[0][0] == @@board[2][2] and @@board[0][0] != nil
      puts "#{@@board[0][0]} wins!"
      return true
    elsif @@board[0][1] == @@board[1][1] and @@board[0][1] == @@board[2][1] and @@board[0][1] != nil
      puts "#{@@board[0][1]} wins!"
      return true
    elsif @@board[0][2] == @@board[1][2] and @@board[0][2] == @@board[2][2] and @@board[0][2] != nil
      puts "#{@@board[0][2]} wins!"
      return true
    elsif @@board[1][0] == @@board[1][1] and @@board[1][0] == @@board[1][2] and @@board[1][0] != nil
      puts "#{@@board[1][0]} wins!"
      return true
    elsif @@board[2][0] == @@board[2][1] and @@board[2][0] == @@board[2][2] and @@board[2][0] != nil
      puts "#{@@board[2][0]} wins!"
      return true
    elsif @@board[0][2] == @@board[1][1] and @@board[0][2] == @@board[2][0] and @@board[0][2] != nil
      puts "#{@@board[0][2]} wins!"
      return true
    else
      return false
    end
  end

  def self.apply_move(player, move)
    if @@board[move['x'].to_i][move['y'].to_i] 
      puts "invalid move"
      Board.apply_move(player, move)
    else
      @@board[move['x'].to_i][move['y'].to_i] = player
    end
  end
end
