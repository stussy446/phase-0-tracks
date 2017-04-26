def status
  puts "Status message"
  yield("New", "Awesome")
end 

status{ |word1, word2| puts "#{word1}, way more #{word2} status message!!"}

sports = ["Hockey", "Baseball", "Basketball", "Football"]
game_of_thrones = {
  queen: "Cersei",
  knight: "Jamie",
  bastard: "Jon Snow",
  no_name: "Aria Stark"
}

sports.map!{|sport| 
  sport + " is awesome!"
}


game_of_thrones.each{|title, character| 
  puts "#{game_of_thrones[title]} is an important part of Game of Thrones."
}

sports.each{|sport|
  puts "#{sport} is my favorite sport!"
}