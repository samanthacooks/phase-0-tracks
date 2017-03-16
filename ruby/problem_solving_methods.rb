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
  puts "nil"
  end
}

# Release 1

# Begin with array with 0, 1
# Create fibonacci method to add additional numbers to array
# Print array


puts "How many sequences of Fibonacci would you like to run?"
input = gets.chomp.to_i

def fib(input)
 fibonacci = []
 if input == 0
  fibonacci.push(0)
 elsif input == 1
  fibonacci.push(0)
  fibonacci.push(1)
 else
  fibonacci.push(0)
  fibonacci.push(1)
  current_index = 2
  until input == current_index
  new_integer = (fibonacci[current_index - 1]) + (fibonacci[current_index - 2])
  fibonacci.push(new_integer)
  current_index += 1
  end
 end
 p fibonacci
end

fib(input)
