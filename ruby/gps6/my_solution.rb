# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative: links test file to the class file for rspec testing
#
#
require_relative 'state_data'
class VirusPredictor
# for each new instance of a class, sets the 3 below parameters
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[@state][:population]
    @population_density = STATE_DATA[@state][:population_density]
  end
  def virus_effects
    predicted_deaths
    speed_of_spread
    virus_statement
  end
private
# define predicted deaths and speed of spread using instance parameters as direct output
# outputs the predicted number of deaths for each state due to outbreak using all instance parameters
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when range_above(200)
      rate = 0.4
    when range_above(150)
      rate = 0.3
    when range_above(100)
      rate = 0.2
    when range_above(50)
      rate = 0.1
    else
      rate = 0.05
    end 
       @number_of_deaths = (@population * rate).floor
 end
def range_above(number)
  number..Float::INFINITY
end
# outputs the speed of spread for each state using the population density and state parameters
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  if @population_density >= 200
    @speed = 0.5
  elsif @population_density >= 150
    @speed = 1
  elsif @population_density >= 100
    @speed = 1.5
  elsif @population_density >= 50
    @speed = 2
  else
    @speed = 2.5
  end
 end
def virus_statement
   puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months."
end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
#INPUT: STATE_DATA hash
#STEPS:
# 1. Iterate through the hash 51 times for each state name by using each
#OUTPUT: VirusPredicter instance for each state with state name, population density, and population
STATE_DATA.each do|state_name,population_data| 
state_name = VirusPredictor.new(state_name)
state_name.virus_effects
end
#=======================================================================
# Reflection Section
# 
# 1. In the state data file, the hash syntax between the state name as key and it's population data hash as value uses a rocket. This is correct since the rocket syntax keeps both objects as they are, string and a hash. Inside the population data hash, they symbol syntax is used. This automatically converts the population density and population keys into symbols with the same id. This helps the program to run more efficiently and makes for a cleaner code.
# 2. Require relative links a test file to a class file for rspec testing. Require links a module to a class.
# 3. A couple ways to iterate through a hash are to use the .each and .times methods. Each is best used to perform a function once across inputs of an entire hash. Times is better used to perform an operation any set number of times against a hash.
# 4. When refactoring virus effects, realizing that calling the instance variables in the predicted deaths and speed of spread variables was unnecessary stood out. I definitely could understand the frame of thinking for calling these variables when writing the code. Only during refactoring the finished code would one realize how repetitive this was. 
# 5. This challenge, I most definitely solidified refactoring. There were so many things I had not thought about doing when first learning this concept in the challenge last week that my mind was opened up to during the gps this week. Great lesson!