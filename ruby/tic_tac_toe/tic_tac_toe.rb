class TicTacToe

  LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

  # initialize the game
  # selected cell
  # update cell
  # change player
  # check winner

  def initialize
    @board = Array.new(3) { Array.new(3, ' ') }
    @current_player = "X"
  end

  def display_board
    puts "  1 2 3"
    @board.each_with_index do |row, i|
      print "#{i + 1} "
      row.each_with_index do |cell, j|
        print cell
        print '|' unless j == 2
      end
      puts
      puts "  -----" unless i == 2
    end
  end

  def make_move(row, col)
    if @board[row -1][col -1] = ' '
      @board[row -1][col -1] = @current_player
      switch_player
      true
    else
      puts "Invalid move! That cell is already taken."
      return false
    end
  end

  def check_winner
    # Check rows
    @board.each do |row|
      return true if row.uniq.length == 1 && row.uniq[0] != ' '
    end

    # Check columns
    (0..2).each do |i|
      return true if @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i] && @board[0][i] != ' '
    end

    # Check diagonals
    return true if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[0][0] != ' '
    return true if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[0][2] != ' '

    return false
  end

  def board_full?
    @board.flatten.none? { |cell| cell == ' ' }
  end


  private

  def switch_player
    @current_player = @current_player == 'X' ? 'O' : 'X'
  end
end


# game = TicTacToe.new
# game.display_board
# game.make_move(1, 1)
# game.display_board
