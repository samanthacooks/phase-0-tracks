puts "What's your hamster's name?"
hamster_name=gets.chomp

puts "Volume level? On a scale of 1-10."
volume_level=gets.chomp.to_i

puts "Fur color?"
fur_color=gets.chomp

puts "Is the hamster a good candidate for adoption? [y/n]"
adoption=gets.chomp
if adoption== "y"
  adoption=true
elsif adoption=="n"
  adoption=false
else
adoption=nil
end

puts "What is the estimated age of the hamster? (years)"
age=gets.chomp.to_i

if age==""
 age=nil
end



puts "My hamster's name is #{hamster_name}. It's volume_level is #{volume_level}. It has beautiful fur the color of #{fur_color}. My hamster is #{age} years old."
 
if adoption
  puts "My hamster is a good candidate for adoption"
else
  puts "My hamster is not a good candidate for adoption"
end