class Santa

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
def celebrate_birthday(new_age)
  @age.to_i + 1
end

def get_mad_at()


#getter
def age
  @age
end

def ethinicity
  @ethnicity
end


end

# new_york = Santa.new

# p new_york.speak
# p new_york.eat_milk_and_cookies("gingerbread")



santas = []


early_genders = ["trans male", "gender non conforming", "female", "two-spirit", "other"]
early_ethinicities = ["black", "hispanic", "other", "korean", "eritrean"]

early_ethinicities.length.times do |i|
  santas << Santa.new(early_genders[i],early_ethinicities[i])
end

p santas