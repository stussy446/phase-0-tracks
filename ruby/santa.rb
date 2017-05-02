# Santa Class with speak, eat_milk_and_cookies, and initialize method 

class Santa 

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

end

# TEST CODE
# st_nick creation should call initialize automatically 
# speak call shoud print Ho, ho, ho! Haaaaappy holidays!"
# eat_milk_and_cookies call should pring "That was a good #{cookie_type}!"

# st_nick = Santa.new()
# st_nick.speak 
# st_nick.eat_milk_and_cookies("Oatmeal Chocolate Chip")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

