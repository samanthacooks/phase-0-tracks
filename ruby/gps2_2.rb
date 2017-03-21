# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define var for grocery list string
  # define hash
  # take grocery items into hash as the key by using .SPLIT on the grocery list variable
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def new_list(shopping_list)

 list = shopping_list.split(' ')
 final_list = {}

 list.each do |x|
  final_list[x] = 1
 end
 
 final_list
end

shopping_list = "carrots apples cereal pizza"

completed_list = new_list(shopping_list)




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

p deleted_grocery_list = delete_grocery_list(updated_list,"banana")




# Method to update the quantity of an item
# input:
# steps:
# output:

def value_grocery_list(deleted_grocery_list,old_value, old_quantity,new_quantity)

if deleted_grocery_list.include?(old_value) do |old_value,new_quantity|
  old_quantity = new_quantity
  puts deleted_grocery_list
  end
  else
end
end


# deleted_grocery_list.update(deleted_grocery_list) {|old_value,new_quantity| new_quantity +=1}
# deleted_grocery_list
# end

valued_grocery_list = value_grocery_list(deleted_grocery_list,"apples", 1, 3)


# Method to print a list and make it look pretty
# input:
# steps:
# output:


valued_grocery_list.each do |key,value| puts "I need a quantity of #{value} #{key}(s)"
end