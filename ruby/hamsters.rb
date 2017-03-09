puts "What's your hamster's name?"
hamster_name=gets.chomp

puts "Volume level? On a scale of 1-10."
volume_level=gets.chomp

puts "Fur color?"
fur_color=gets.chomp

puts "Is the hamster a good candidate for adoption? [y/n]"
adoption=gets.chomp

puts "What is the estimated age of the hamster?"
age=gets.chomp

if age==""
 age=nil
end

