#Alias for Spy Name
#Write a code that creates an alias for user input's name
#Alias must meet the following requirements: 
# - swap the first and last name
# - change all the vowels to the next vowel in 'aeiou'
# - change all consonant to the next consonant in the alphabet 




puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp



spy_name = {first_name,last_name}
spy_name[0],spy_name[1] = spy_name[1],spy_name[0]

puts spy_name