module Shout 
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :) :) :)"
  end  

end 

# TEST CODE 

puts Shout.yell_angrily("NOOO")
puts Shout.yelling_happily("YESSSS")