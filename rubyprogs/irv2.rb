totals_array = [5,3]
total_votes = totals_array[0]
total_candidates = totals_array[1]
names = ["K","T","C"]
raw_votes = [[1,0,2],[0,1,2 ],[2,1,0], [2 ,1, 0], [1 ,2 ,0]]
winner_array= [0,0,0]


 

def initiate_round(round)
    raw_votes.each do |i|
        i.each do |j|
          if j == round
          	 winner_array[i.index(j)] = winner_array[i.index(j)] + 1
          end


     end
     end


initiate_round(0)

def calculate_totals()

	winner_array.each {|i|     
       
       if (winner_array[i].to_f / total_votes.to_f ) >= 0.5

       	    winner = names[winner_array.index(i)]

	}



def eliminate_last_place()
	   
       last_place_index = 0
   
        lowest_num_votes= winner_array[0]

        winner_array.each |i| {
   
        	if i < lowest_num_votes
        		  lowest_num_votes = i
        		  last_place_index = i.index
            end

        }
         winner.array.delete_at(lowest_place_index)


end

def find_last_place_ballots()

	  winner_array.each {|i|
             if i[last_place_index] =  0
             	  redistribute_votes(i)




	              }

def redistribute_votes()





end


puts winner_array

                
    

