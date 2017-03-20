#Alias for Spy Name
#Write a code that creates an alias for user input's name
#Alias must meet the following requirements: 
# - swap the first and last name
# - change all the vowels to the next vowel in 'aeiou'
# - change all consonant to the next consonant in the alphabet 


puts "Would you like an alias? [y/quit]"
perform = gets.chomp


until perform == "quit"


puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp


spy_name = [first_name,last_name]

 user_input = []
  user_input.push(spy_name)
 
spy_name[0],spy_name[1] = spy_name[1],spy_name[0]

puts spy_name




# vowel next

vowels = ["a", "e", "i", "o", "u"]


spy_name = spy_name.split(" ")

spy_name.map! do |x|
if spy_name.include?(vowels){|x| x = vowels.next} 
  p spy_name
else
  p spy_name
end
new_spy_name = spy_name.join(" ")
end




# consonant next

consonant = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

new_spy_name = new_spy_name.split(" ")
new_spy_name.map! do |x|
if new_spy_name.include?(consonant) {|x| x = consonant.next} 
else
  p new_spy_name
end
final_spy_name = new_spy_name.join(" ")
end


 alias_input = []
  alias_input.push = final_spy_name

end

puts "#{alias_input} is actually know as #{user_input}"