class Puppy

  def initialize()
    puts "Initializing new puppy instance..."
  end 

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times { puts "Woof!"}
  end 

  def roll_over()
    puts "*rolls over*"
  end

  def dog_years(human_years)
    7 * human_years
  end

  def play_dead()
    puts "The puppy lays there motionless..."
  end   
end

class Cat 
  def initialize()
    puts "Making cat sufficiently lazy..."
  end 

  def perform_trick(trick_name)
    puts "The cat stares at you...why would you think it would do #{trick_name}?"
  end 

  def scratch(human_name)
    puts "The cat scratched #{human_name}!"
  end 
end 

# TEST CODE 

dog = Puppy.new
dog.fetch("ball")
dog.speak(3)
dog.roll_over
puts dog.dog_years(7)
dog.play_dead 

trick_list= ["roll over", "speak", "play dead", "eat"]
human_name_list = ["Steve", "Danielle", "Justin", "Kevin"]
cat_array = []

50.times do |i|
  cat_array << Cat.new()
end 

cat_array.each do |cat|
  cat.perform_trick(trick_list.sample)
  cat.scratch(human_name_list.sample)
end 

