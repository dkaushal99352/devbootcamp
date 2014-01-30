def is_fibonacci?(i,sum = 0, num = 1 , prev_num = 0)

#sum = 0
#num = 1
#prev_num = 0

     sum = num + prev_num
     prev_num = num
     num = sum
     if sum == i  || i == 0
        return true
     elsif sum > i
        return false
     else 

         is_fibonacci?(i,sum,num,prev_num)
     end

end

def assert
  raise "Assertion failed!" unless yield
end


assert {is_fibonacci?(144) == true }
assert {is_fibonacci?(1596) == false }



