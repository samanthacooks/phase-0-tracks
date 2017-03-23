class Santa

attr_reader :age, :ethnicity
attr_accessor :gender

  def initialize(gender,ethnicity)
    "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak()
    "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    "That was a good #{cookie}!"
  end


#setter
def celebrate_birthday()
  @age.to_i + 1
end

def get_mad_at(name)
  @reindeer_ranking.delete(name)
  @reindeer_ranking.push(name)
end

def new_age
  @age = rand(1..140)
end

end


new_york = Santa.new("female","west indian")
p new_york.speak
p new_york.eat_milk_and_cookies("gingerbread")


austin = Santa.new("trans female", "mexican")
p "Age: #{austin.age} and Ethnicity: #{austin.ethnicity} and Gender: #{austin.gender}"
austin.celebrate_birthday
austin.gender = "female"
austin.get_mad_at("Rudolph")
p "Age: #{austin.celebrate_birthday} and Ethnicity: #{austin.ethnicity} and Gender: #{austin.gender}"



santas = []

early_genders = ["trans male", "gender non conforming", "female", "two-spirit", "other"]
early_ethinicities = ["black", "hispanic", "other", "korean", "eritrean"]

early_ethinicities.length.times do |i|
  santas << Santa.new(early_genders[i],early_ethinicities[i])
end





20.times do 
  santas << Santa.new(early_genders.sample,early_ethinicities.sample)
end

  santas.each do |random_age|
   random_age.new_age
  end



p santas