#Interior Designer Form Code
#Ask the user to enter details of each client
#Inputs include: client's name, age, number of children, decor theme, budget, and immediate job
#Make all keys symbols in the hash, unless string is absolutely necessary

#Program should:
  #Prompt user for all info
  #Convert user input to the appropriate data type
  #Print the hash back when all questions have been answered
  #Give user the opportunity to update a key once. If user replies "none", skip. If the user updates a key, ask for the new value and update key
  #Print the latest version of the hash
  #Exit program



puts "Name?"
name = gets.chomp

puts "Age?"
age = gets.chomp

puts "How many children do you have?"
children = gets.chomp

puts "What is your decor theme?"
theme = gets.chomp

puts "What is the budget for the project? (dollars)"
budget = gets.chomp.to_i

puts "Immediate need? [y/n]"
immediate = gets.chomp


application = {
  Name: name,
  Age: age,
  Children: children,
  Theme: theme,
  Budget: budget,
  Immediate: immediate
}

p application

puts "Do you need to update any of the above questions? [yes/none]"
update = gets.chomp


if update == "yes" 
  puts "Which question needs to be updated?"
  updated_key = gets.chomp.to_sym
  puts "New answer?"
  new_answer = gets.chomp
  application.include?(updated_key) {|x,y| x == updated_key}
  application[updated_key] = new_answer
  puts application
else
  update == "none"
  puts application
end
  
