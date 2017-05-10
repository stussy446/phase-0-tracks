# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# require_relative brings something local (probably within directory) into a file while require
# brings in things outside of your library into your file.
require_relative 'state_data'
class VirusPredictor
  # runs when new instance of class is run. Sets each instance with values
  # of the parameters state_of_origin, population_density, population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls predicted_deaths and speed_of_spread methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
  # Takes the population_density attribute and sets a number of deaths
  # according to the population attribute times a certain number.
  # prints a statements containing state name and number of deaths.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      print "#{@state} will lose #{(@population * 0.4).floor} people in this outbreak"
    elsif @population_density >= 150
      print "#{@state} will lose #{(@population * 0.3).floor} people in this outbreak"
    elsif @population_density >= 100
      print "#{@state} will lose #{(@population * 0.2).floor} people in this outbreak"
    elsif @population_density >= 50
      print "#{@state} will lose #{(@population * 0.1).floor} people in this outbreak"
    else
      print "#{@state} will lose #{(@population * 0.05).floor} people in this outbreak"
    end
  end
  # takes the population density attribute and sets the speed of the
  # spread of the disease depending on the population density.
  # prints a statement containg the speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    print " and will spread across the state in"
    if @population_density >= 200
      print " 0.5 months.\n\n"
    elsif @population_density >= 150
      print " 1.0 months.\n\n"
    elsif @population_density >= 100
      print " 1.5 months.\n\n"
    elsif @population_density >= 50
      print " 2.0 months.\n\n"
    else
      print " 2.5 months.\n\n"
    end
  end
end

## 50_state_report
# iterate through STATE_DATA hash, and for each state initialize a new Virus Predictor, pulling in the following inputs for each initialization:
#  - state name
#  - population
#  - pop density

def fifty_state_report(data)
  data.each do |state_name, state_data|
    VirusPredictor.new(state_name, state_data[:population_density], state_data[:population]).virus_effects
  end
end

#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

fifty_state_report(STATE_DATA)
#=======================================================================
# Reflection Section