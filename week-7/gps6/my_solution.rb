# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  private

  def virus_effects

    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end


  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, value|
 all_states =  VirusPredictor.new(state, value[:population_density], value[:population])
p all_states.virus_effects
end



=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
=begin

Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?
The first hash syntax relies on the => to assign a value to a key, while the second hash syntax (used for the value of the first key) just uses a colon after the key, followed by the value.

What does require_relative do?  How is it different from require?
require_relative will take outside information by loading a file, while require is used when you are accessing a file from ruby's built in libraries.

What are some ways to iterate through a hash?
We used .each to iterate over the hash...it's similar to using .each_with_index for arrays, except in this case the keys are the index.

When refactoring virus_effects, what stood out to you about the variables, if anything?
Unfortunately, we ran out of time trying to figure out why the method virus_effects needed refactoring to begin with.

What concept did you most solidify in this challenge?
Iterating over hashes...during the course of week 6 I definitely grew comfortable working with arrays and even nested arrays, but for some reason the syntax of hashes throws me off, so this exercise definitely helped to solidify my understanding.
=end