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

 list.each_with_index do |x,i|
  final_list[x] = quantity[i]
 end
 
 final_list
end

shopping_list = "lemonade tomatoes onions icecream"
quantity = 2, 3, 1, 4
p quantity
completed_list = new_list(shopping_list,quantity)

p completed_list






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
p updated_list




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
p deleted_grocery_list



# Method to update the quantity of an item
# input: deleted_grocery_list, this_item, new_quantity 
# steps: feed into item who's quantity needs to be updated and set equal to new quantity
# output: new hash with updated item value

def value_grocery_list(deleted_grocery_list, this_item, new_quantity)
deleted_grocery_list[this_item] = new_quantity
deleted_grocery_list
end

valued_grocery_list = value_grocery_list(deleted_grocery_list, "icecream", 1)
p valued_grocery_list



# Method to print a list and make it look pretty
# input: valued_grcoery_list
# steps: iterate each item and quantity in hash to print in a sentence
# output: printed grocery list

def printed_list(valued_grocery_list)
valued_grocery_list.each {|key,value| puts "I need a quantity of #{value} #{key}(s)"}
end

pretty_list = printed_list(valued_grocery_list)
p pretty_list



# From working this challenge I learned that psuedocode is more useful when using the template format given in the challenge. Usually, I write a title and then each detailed step but adding the input and output categories were a great help.
# The trade-off of using arrays and hashes for this challenge is that it was easier to manipulate the data since it was a list. Arrays and hashes are essentially formatted data lists.
# A method returns an updated output of the input data, based on whatever condition is specified in it's block
# Strings, integers, arrays, and hashes can be passed as arguments in a method
# You can pass information between methods by creating a variable that is defined by a called method (and argument(s)), then using this new variable within a subsequent method. This is an inadvertent way of nesting a method within another method.
# In this challenge, the concept of nesting a method within another by the use of variables was solidified. As well as how to create methods with various kinds of parameters. Unfortunately, I'm still having confusion about changing data within arrays and hashes. I will make sure to research these topics more before digging too deep into this week's work
