#Alias for Spy Name
#Write a code that creates an alias for user input's name
#Alias must meet the following requirements: 
# - swap the first and last name
# - change all the vowels to the next vowel in 'aeiou'
# - change all consonant to the next consonant in the alphabet 


puts "Would you like an alias? [y/quit]"
perform = gets.chomp


until perform = "quit"


puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp


spy_name = [first_name,last_name]

 user_input = user_input.new
 
spy_name[0],spy_name[1] = spy_name[1],spy_name[0]

puts spy_name




# def vowel_update(x)
# vowels = ["a", "e", "i", "o", "u"]


spy_name = spy_name.split(" ")

spy_name.map! do |x|
if spy_name.include?(vowels) do 
  spy_name(x).(vowels) {|x| x = vowels.next} 
end
end
new_spy_name = spy_name.join(" ")
end

p vowel_update(spy_name)




def constanent_update(x)
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
end


end