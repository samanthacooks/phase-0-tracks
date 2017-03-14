# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
#=> “InVeStIgAtIoN”


 "zom".squeeze("zoom")
# => “zoom”

"enhance".lstrip!
"enhance".rstrip!
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


"the usual".chomp!("suspects")
#=> "the usual suspects"

" suspects".sub!(" ","the usual ")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".ljust(4,'122')
"z122".slice("122")
# => 122 
# (What is the significance of the number 122 in relation to the character z?) The number 122 in relation to character z is the new string that is printed if the integer (first parameter) is greater than the length of the "z" string. Which is true in this case.

"How many times does the letter 'a' appear in this string?".count "a"
# => 4