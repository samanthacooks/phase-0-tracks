class GuessGame
attr_reader :guess_count 
attr_reader :is_over

  def intialize
    @alphabet = ["a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,x,y,z"]
    @guess_count = 0
    @is_over = false
  end

  def blank_word
    user_1.gsub(alphabet,"_")
  end


end


p "Welcome User 1! What word would you like to make User 2 guess?"
user_1 = gets.chomp

p blank_worduser_1