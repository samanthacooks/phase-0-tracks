#Creating a method that asks for user input and sets it equal to a variable
#Check to see if the variable is in the array using .include?
#If it returns true, print the index. If it returns false, print nil

march_saturdays = [4, 11, 18, 25]

puts "What's the best March Saturday date for you? (number)"
date = gets.chomp.to_i

march_saturdays.each_with_index {|x,y| 
  if date == x
    puts "#{y}"
  else
    puts nil
  end
}
end





# march_saturdays.each do |x| 
# march_saturdays.include?(date)
# if true
#   puts march_saturdays[index]