# Santa Class with speak, eat_milk_and_cookies, and initialize method 

class Santa 
  
  def speak()
    puts "Ho, ho, ho! Haaaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end 

  def initialize()
    puts "Initializing Santa instance..."
  end
end 

# TEST CODE
# st_nick creation should call initialize automatically 
# speak call shoud print Ho, ho, ho! Haaaaappy holidays!"
# eat_milk_and_cookies call should pring "That was a good #{cookie_type}!"

st_nick = Santa.new()
st_nick.speak 
st_nick.eat_milk_and_cookies("Oatmeal Chocolate Chip")
