# Part One:
#   1. Play with this code. Figure out what each line is doing. 
#   2. Write a comment on each line to explain how the program is working
 
# Part Two:
#  Use your refactoring skills to: 
#   1. Properly indent the code
#   2. Make the code D.R.Y. (Don't repeat yourself)
#   3. Make the code expandable and concise. #include comments for complicated logic or 
#     methods that may be confusing to others.
 
#Part Three: Add features for the customer
# Hi! I am a small bakery owner who has a ruby program that calculates the 
# number of items I need to bake for a customer with a favorite food. 
# I love the program as it is, but I want to add a couple of features:
#   1. I have customers who don't have favorite foods, but want a mix of all items
#   2. I want to add items to my menu, like pudding, bunt cake, and mega-cupcakes
#   3. I still want my program to print every item that I need. 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false
  if fav_food == nil
  has_fave = true
  end
  my_list.each_key do |k|
  if k == fav_food
  has_fave = true
  fav_food = k
  end
  end
  if has_fave == false
  raise ArgumentError.new("You can't make that food")
  else
  fav_food_qty = my_list.values_at(fav_food)[0]
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else num_of_people % fav_food_qty != 0
    while num_of_people > 0
    if num_of_people / my_list["pie"] > 0
    pie_qty = num_of_people / my_list["pie"]
    num_of_people = num_of_people % my_list["pie"]
    elsif num_of_people / my_list["cake"] > 0
    cake_qty = num_of_people / my_list["cake"]
    num_of_people = num_of_people % my_list["cake"]
    else
    cookie_qty = num_of_people
    num_of_people = 0
    end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end
 