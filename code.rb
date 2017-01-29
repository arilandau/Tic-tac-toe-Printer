
  board_a = [
    ['x', 'o', 'x'],
    ['x', nil, 'o'],
    ['x', 'o', nil]
  ]

  board_b = [
    [nil, 'o', 'x'],
    ['x', 'o', nil],
    ['x', 'o', nil]
  ]

  def print_grid(board)

    board.each_with_index do |row, row_index|
      row.each_with_index do |tic, tic_index|
          if board[row_index][tic_index].nil?
            board[row_index][tic_index] = " "
          end

          if row_index < 2 && tic_index == 2
            print "#{board[row_index][tic_index]}\n"
            puts  "__________"
          elsif tic_index < 2
            print "#{board[row_index][tic_index]} | "
          else
            print board[row_index][tic_index]
          end
      end
    end
  end


print_grid(board_a)
