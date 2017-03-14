# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#"iNvEsTiGaTiOn".swapcase
#=> “InVeStIgAtIoN”
def switch (string)
  puts string.swapcase
end

p switch("Hello Jello")



#"zom".squeeze("zoom")
# => “zoom”
def squeeze(full_string,string)
  puts full_string.squeeze(string)
end

p squeeze("boom","bom")



#"enhance".lstrip!
#"enhance".rstrip!
# => "    enhance    "
def strip(string)
  puts string.lstrip
end

p strip(" Hey")



#"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
def upcase(string)
  puts string.upcase
end

p upcase("spring forward")



#"the usual".chomp!("suspects")
#=> "the usual suspects"
def chomp(string,remove)
  puts string.chomp(remove)
end

p chomp("Monday","day")



#" suspects".sub!(" ","the usual ")
# => "the usual suspects"
def sub(string,old, replace)
  puts string.sub(old,replace)
end

p sub("Tom Tom Cat","Tom","Big")




#"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
def chop(string)
  puts string.chop
end

p chop("Pizza")



#"The mystery of the missing first letter"[1,38]
# => "he mystery of the missing first letter"
def first_letter(string,start,length)
  puts string[start,length]
end

p first_letter("Time for bed",1,11)




#"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
def tighten(string,range)
  puts string.squeeze(range)
end

p tighten("French  Toast  for  breakfast"," ")



#"z".ljust(4,'122')
#"z122".slice("122")
# => 122 
# (What is the significance of the number 122 in relation to the character z?) The string "122" in relation to string "z" is to be printed immediately behind if the integer (first parameter, 4 in this case) is greater than the length of the "z" string. Which is true in this case.
def justify(string,integer,new_string)
  puts string.ljust(integer,new_string)
end

p justify("me",5,"you")


#"How many times does the letter 'a' appear in this string?".count "a"
# => 4
def count(string,input)
  puts string.count input
end

p count("Charlotte has all four seasons in one day","o")
