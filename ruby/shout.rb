#module Shout 
  
  #def self.yell_angrily(words)
    #words + "!!!" + " :("
  #end

  #def self.yelling_happily(words)
    #words + "!!!" + " :) :) :)"
  #end  

#end 

# TEST CODE 

#puts Shout.yell_angrily("NOOO")
#puts Shout.yelling_happily("YESSSS")

module Shout 
  
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :) :) :)"
  end 

end

class Dad
  include Shout  
end 

class Mom 
  include Shout 
end 

# TEST CODE 

dad = Dad.new
puts dad.yell_angrily("Stop taking my beer")
mom = Mom.new
puts mom.yelling_happily("I'm so proud of you")