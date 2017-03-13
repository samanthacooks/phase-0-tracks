puts "How many employees will be processed this session?"
number_of_employees = gets.chomp.to_i


until number_of_employees == 0


  puts "What's your name?"
  $employee_name = gets.chomp

  puts "How old are you?"
  $age = gets.chomp.to_i

  puts "What year were you born?"
  $birth_year = gets.chomp.to_i

  puts "Our cafeteria serves garlic bread. Should we order some for you? [yes/no]"
  $garlic_bread = gets.chomp

  puts "Would you like to enroll in the company's health insurance? [yes/no]"
  $insurance = gets.chomp

  puts "The employee's name is #{$employee_name} and their age is #{$age}, with the birth year #{$birth_year}. The employee said #{$garlic_bread} when offered garlic bread and also said #{$insurance} when asked if they would like to enroll in the company insurance plan."

  current_year = 2017
  

  case $employee_name 
    when "Drake Cula","Tu Fang"
      obvious_names = true
    end

  def probably_not()
    current_year = 2017
      case $age
        when (current_year - $birth_year),((current_year - $birth_year) -1)
        reasonable_age = true
      end
     probably_not = true 
  end

  def probably()
      $garlic_bread == "no" || $insurance == "no"
      probably = true
  end

  def certainly()
    $garlic_bread == "no" && $insurance == "no"
    certainly = true
  end



    if 
      obvious_names == true && probably_not == true
      puts "Definitely a vampire."
    elsif
      probably == true && probably_not == false
      puts "Probably a vampire."
    elsif 
      certainly == true && probably_not == false
       puts "Almost certainly a vampire."
    elsif 
      probably_not == true
      puts "Probably not a vampire."
    else
      puts "Results inconclusive."
    end



  puts "Please list all allergies. When complete, enter done."
  allergies = gets.chomp
 

  if allergies == "sunshine"
    puts "Probably a vampire."
  else
    until allergies == "done"
       puts "Please list all allergies. When complete, enter done."
      allergies = gets.chomp
    end
  end


number_of_employees = number_of_employees - 1
end


if number_of_employees == 0
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
else
  puts nil
end
