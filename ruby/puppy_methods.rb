class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

def speak(integer)
  "Woof " * integer
end

def roll_over()
  "*rolls over*"
end

def dog_years(human_years)
  dog_years = human_years * 7
  dog_years
end

def play_dead()
  "*plays dead*"
end

def initialize()
  puts "Initializing new puppy instance..."
end

end

Fido = Puppy.new



p Fido.fetch("ball")
p Fido.speak(3)
p Fido.roll_over()
p Fido.dog_years(3)
p Fido.play_dead()




class Pizza

  def initialize()
     puts "Initializing new pizza instance..."
  end

  def bake_time(minutes)
    "Bakes for #{minutes} minutes"
  end

  def topping(type_of_topping)
    "#{type_of_topping} pizza"
  end

end


until 
Food = Pizza.new

p Food.bake_time(20)
p Food.topping("cheese")


