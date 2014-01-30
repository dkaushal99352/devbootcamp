
boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
 
def create_word(board, *coords)
  coords.map { |coord| board[coord.first][coord.last]}.join("")
end
 
 
def get_row(board, row)
     board[row].inspect
 
end

def get_column(board,column)

    returned_column = []
	board.each {|row|

	       returned_column << row[column] }

	returned_column.inspect
end



 
puts create_word(boggle_board, [0,0],[0,1],[1,1])
puts create_word(boggle_board, [3,0],[3,1],[3,2],[3,3])
puts get_row(boggle_board, 1)
puts get_row(boggle_board, 2)
puts get_row(boggle_board, 3)
puts get_column(boggle_board, 1)

