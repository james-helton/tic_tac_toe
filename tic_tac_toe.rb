class TicTacToe
  attr_reader :turn
  def display
    puts '1   |2  |3  '
    puts "  #{@square[0][0]} | #{@square[0][1]} | #{@square[0][2]} "
    puts '----|---|----'
    puts "4 #{@square[1][0]} |5#{@square[1][1]} |6#{@square[1][2]} "
    puts '----|---|----'
    puts "  #{@square[2][0]} | #{@square[2][1]} | #{@square[2][2]} "
    puts '7   |8  |9  '
  end

  def initialize
    @square = Array.new(3) { Array.new(3) }
    @turn = 'X'
    (0..2).step do |x|
      (0..2).step do |y|
        @square[x][y] = ' '
      end
    end
  end

  def take_turn(x, y)
    @square[x][y] = @turn
    @turn = @turn == 'X' ? 'O' : 'X'
  end

  def check_for_win
  end

  def check_row(row)
    row.all? { |space| space == row.first }
  end
end