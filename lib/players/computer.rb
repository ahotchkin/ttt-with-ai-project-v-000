require 'pry'

module Players

  class Computer < Player

    WIN_COMBINATIONS = [
      [0,1,2], # top row
      [3,4,5], # middle row
      [6,7,8], # bottom row
      [0,3,6], # left column
      [1,4,7], # middle column
      [2,5,8], # right column
      [0,4,8], # left diagonal
      [6,4,2] # right diagonal
    ]

    def move(board)
      # Need to figure out how to have the computer keep playing until the game ends.
      # Should first look to see if there any of the winning combinations can be completed on the next move. If so, should move to that spot, regardless of token.
      WIN_COMBINATIONS.detect do |combo|
        binding.pry
        if board.cells[combo[0]] == board.cells[combo[1]] && board.cells[combo[0]] != " "
          (combo[2]+1).to_s
        elsif board.cells[combo[0]] == board.cells[combo[2]] && board.cells[combo[0]] != " "
          (combo[1]+1).to_s
        elsif board.cells[combo[1]] == board.cells[combo[2]] && board.cells[combo[1]] != " "
          (combo[0]+1).to_s
        end
      end


      # if !board.taken?("5")
      #   "5"
      # elsif !board.taken?("1")
      #   "1"
      # elsif !board.taken?("3")
      #   "3"
      # # # elsif !board.taken?("7")
      # # #   "7"
      # # # elsif !board.taken?("9")
      # # #   "9"
      # elsif !board.full?
      #   board.cells.detect do |cell|
      #     if cell == " "
      #       cell
      #     end
      #   end
      # end
      # If the board isn't full take the first available spot
      # elsif !board.taken?(cell)
      #   board.cells.detect do |cell|
      #     cell == " "
      #     cell
      #   end
      # end
    end
  end

end
