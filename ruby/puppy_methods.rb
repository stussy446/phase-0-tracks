class Puppy

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

# TEST CODE 

dog = Puppy.new
dog.fetch("ball")
dog.speak(3)
dog.roll_over
puts dog.dog_years(7)
dog.play_dead 

