# Input a string
# Create variable containing empty string
# Iterate through every letter of string at index
# For every " " leave as " "
# Otherwise advance each letter to next and store to variable
# Return variable

def encrypt(string)
  index = 0
  new_string = ""

while index < string.length
  if string[index] == " "
     new_string[index] = " "
  else
  new_string[index] = string[index].next
  end
  index += 1
end
return new_string

end

# puts encrypt("abc")
# puts encrypt("zed")

# Input a string
# Create variable containing empty string
# Iterate through every letter of string at index
# For every " " leave as " "
# Indexed each letter in string of full alphabet
# Subtract 1 from alphabet index to move each letter in string backward
# Return variable


def decrypt(string)
  index = 0
  new_string = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"

while index < string.length
  if string[index] == " "
     new_string[index] = " "
  else
  letter = alphabet.index(string[index])
  new_string += alphabet[letter - 1]
  end
  index += 1
end
return new_string

end

# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt(encrypt("swordfish"))

# Methods were individually defined. Calling encrypt returned the string correctly, decrypt then reversed the returned string.


# Request user feedback on if they would like to perform decrypt of encrypt for password.
# Ask for password
# Run requested method and print result to screen and end program.

puts "Would you like to decrypt or encrypt a password? Answer [encrypt/decrypt]:"
 method = gets.chomp.downcase
puts "What is the password?"
 password = gets.chomp
if method == "encrypt"
  puts encrypt("#{password}")
elsif method == "decrypt"
  puts decrypt("#{password}")
else
  puts "Please answer encrypt or decrypt"
end