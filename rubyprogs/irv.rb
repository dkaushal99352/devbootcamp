totals_array = [5,3]
names = ["K","T","C"]
raw_votes = [[1,0,2],[0,1,2 ],[2,1,0], [2 ,1, 0], [1 ,2 ,0]]
winner_array= []


    raw_votes.each do |i|
        i.each do |j|
          if j == 0
          	 winner_array[i.index(j)] = winner_array[i.index(j)] + 1
          end


     end
     end

puts winner_array

                
    

