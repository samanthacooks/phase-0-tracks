module Shout
  def self.yell_agrily(words)
    words + "!!!" + " :("
  end

def self.yell_happily(other_words)
  other_words + "!" + " :)"
end

end

p Shout.yell_agrily("No, I don't want to")
p Shout.yell_happily("Yes, I do")

