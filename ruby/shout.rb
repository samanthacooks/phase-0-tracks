# module Shout
#   def self.yell_agrily(words)
#     words + "!!!" + " :("
#   end

# def self.yell_happily(other_words)
#   other_words + "!" + " :)"
# end

# end

# p Shout.yell_agrily("No, I don't want to")
# p Shout.yell_happily("Yes, I do")



module Shout
  def yell_agrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(other_words)
    other_words + "!" + " :)"
  end
end


class Mean_friend
  include Shout
  def initialize()
  end
end

class Nice_friend
  include Shout
  def initialize()
  end
end

mean = Mean_friend.new
p mean.yell_agrily("Go")

nice = Nice_friend.new
p nice.yell_happily("Don't go")