
boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
 



class BoggleBoard
attr_reader  :board

def initialize(dice_grid)
       @board = dice_grid
end



def create_word(*coords)
  coords.map { |coord| @board[coord.first][coord.last]}.join("") 
end
 
 
def get_row(row)
     @board[row].inspect
end

def get_column(column)

    returned_column = []
	@board.each {|row|
        returned_column << row[column] }
	    returned_column.inspect 

end

def get_diagonal(cell1, cell2)

   letter_array=[]

   unless (cell1.first - cell2.first == cell1.last - cell2.last ) 
      raise ArgumentError.new ("Coordinates do not represent a diagonal")
   end


    vertical_ndx = cell1.first
    horizontal_ndx = cell1.last  
    letter_array << @board[vertical_ndx][horizontal_ndx]

    while ((vertical_ndx != cell2.first) && (horizontal_ndx  !=  cell2.last)) do
     if cell1.first < cell2.first
        vertical_ndx += 1
     else
           vertical_ndx  = vertical_ndx -1
     end
     

     if  cell1.last  < cell2.last
     	    horizontal_ndx += 1
     else
     	    horizontal_ndx  = horizontal_ndx - 1
     end
     
     letter_array << @board[vertical_ndx][horizontal_ndx]
     end
     letter_array.inspect

end

end
 
myBoggle = BoggleBoard.new(boggle_board)


puts myBoggle.create_word([1,1],[2,1],[3,1],[3,2])
puts myBoggle.get_row(0)
puts myBoggle.get_row(1)
puts myBoggle.get_row(2)
puts myBoggle.get_row(3)
puts myBoggle.get_column(0)
puts myBoggle.get_column(1)
puts myBoggle.get_column(2)
puts myBoggle.get_column(3)
puts myBoggle.board[3][2]
puts myBoggle.get_diagonal([2,2],[2,2])
