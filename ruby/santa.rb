# Santa Class with speak, eat_milk_and_cookies, and initialize method 

class Santa 
  attr_reader :ethnicity 
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
      "Comet", "Cupid", "Donner", "Blitzen"] 
    @age = 0
  end

  def speak()
    puts "Ho, ho, ho! Haaaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  # Celebrate Birthday method 
  # add one to age each time called 

  def celebrate_birthday()
    @age += 1 
  end  

  # get mad at reindeeer method 
  # takes a name, if the name matches a name in @reindeer_ranking, that
  # reindeer goes to last in the list 

  def get_mad_at(reindeer_name) 
    if @reindeer_ranking.include?(reindeer_name)
     bad_reindeer = @reindeer_ranking.index(reindeer_name)
     @reindeer_ranking.insert(-1, reindeer_name).delete_at(bad_reindeer)
   end     
  end
end

# TEST CODE
# st_nick creation should call initialize automatically 
# speak call shoud print Ho, ho, ho! Haaaaappy holidays!"
# eat_milk_and_cookies call should pring "That was a good #{cookie_type}!"

# st_nick = Santa.new()
# st_nick.speak 
# st_nick.eat_milk_and_cookies("Oatmeal Chocolate Chip")

# santas = []
# genders = ["man", "woman", "Bisexual", "Pisexual"]
# ethnicities = ["White", "Black", "Asian", "Middle-Eastern", "Native American"]
# ethnicities.length.times do |i|
  # santas << Santa.new(genders[i], ethnicities[i])
# end

# nick = Santa.new("Nick", "White")
# nick.celebrate_birthday
# nick.celebrate_birthday
# nick.get_mad_at("Vixen")
# nick.gender = "Stevesexual"
# puts nick.age
# puts nick.ethnicity

# Create 100 Santas 
# use example_genders  and example_ethnicities

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# do the action of creating a santa 100 times
# create two variables to represent the random elements chosen for the two arrays above 
# each santa should have a random gender and random ethnicity
# reassign each santa's age to a random number between 0 and 140 
# print out each attribute for each instance

100.times do |i|
  i = Santa.new(example_genders.sample, example_ethnicities.sample)
  i.age = rand(140)
  puts "This Santa's gender is #{i.gender}" 
  puts "Their ethnicity is #{i.ethnicity}"
  puts "Their age is #{i.age}"
end











 