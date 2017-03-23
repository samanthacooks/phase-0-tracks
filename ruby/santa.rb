class Santa

  def speak()
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

  def initialize()
    p "Initializing Santa instance..."
  end

end

p speak
p eat_milk_and_cookies("gingerbread")