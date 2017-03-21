# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define var for grocery list string
  # define hash
  # take grocery items into hash as the key by using .SPLIT on the grocery list variable
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def new_list(shopping_list,quantity)

 list = shopping_list.split(' ')
 final_list = {}

 list.each do |x|
  final_list[x] = quantity
 end
 
 final_list
end

shopping_list = "lemonade tomatoes onions icecream"
quantity = 2, 3, 1, 4

complete_list = new_list(shopping_list,quantity)

p complete_list



# Method to update quantities
# input: list, item name, and optional quantity
# steps:
  # define method for updated list
  # use to add new key and value to hash
# output: hash with new item

# def quan_grocery_list(complete_list, quantity)
# complete_list.each_value[x] = quantity[x]
# complete_list
# end

# quantity = 2, 3, 1, 4
# completed_list = quan_grocery_list(complete_list,quantity)

# p completed_list





# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # define method for updated list
  # use to add new key and value to hash
# output: hash with new item

def new_grocery_list(completed_list,item,item_quantity)
completed_list[item] = item_quantity
completed_list
end

updated_list = new_grocery_list(completed_list,"banana", 2)





# Method to remove an item from the list
# input: updated_list, item
# steps:
  # define a method for list with deleted item
  # use .DELETE to remove item specified from hash
# output: hash with item deleted

def delete_grocery_list(updated_list,delete_item)
updated_list.delete(delete_item)
updated_list
end

deleted_grocery_list = delete_grocery_list(updated_list,"lemonade")




# Method to update the quantity of an item
# input: deleted_grocery_list, this_item, new_quantity 
# steps: feed into item who's quantity needs to be updated and set equal to new quantity
# output: new hash with updated item value

def value_grocery_list(deleted_grocery_list, this_item, new_quantity)
deleted_grocery_list[this_item] = new_quantity
deleted_grocery_list
end

valued_grocery_list = value_grocery_list(deleted_grocery_list, "icecream", 1)




# Method to print a list and make it look pretty
# input: valued_grcoery_list
# steps: iterate each item and quantity in hash to print in a sentence
# output: printed grocery list

def printed_list(valued_grocery_list)
valued_grocery_list.each {|key,value| puts "I need a quantity of #{value} #{key}(s)"}
end

pretty_list = printed_list(valued_grocery_list)