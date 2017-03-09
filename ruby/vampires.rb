puts "How many employees will be processed this session?"
number_of_employees = gets.chomp


number_of_employees = number_of_employees.to_i
until number_of_employees == 0


puts "What's your name?"
employee_name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Our cafeteria serves garlic bread. Should we order some for you? [yes/no]"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? [yes/no]"
insurance = gets.chomp

puts "The employee's name is #{employee_name} and their age is #{age}, with the birth year #{birth_year}. The employee said #{garlic_bread} when offered garlic bread and also said #{insurance} when asked if they would like to enroll in the company insurance plan."

current_year = 2017

if 
  age = (current_year - birth_year) || age = (current_year - birth_year) - 1
  && garlic_bread = "yes"
  && insurance = "yes" 
  puts "Probably not a vampire."
elsif
  age < (current_year - birth_year) || age > (current_year - birth_year)
  && (garlic_bread = "no" || insurance = "no")
  puts "Probably a vampire."
elsif
  age < (current_year - birth_year) || age > (current_year - birth_year)
  && garlic_bread = "no"
  && insurance = "no"
  puts "Almost certainly a vampire."
elsif 
  employee_name = "Drake Cula", "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end



number_of_employees -= 1
end


