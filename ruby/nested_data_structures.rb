# Make A structure of sports, with teams and star players on each team
# sports is a hash with teams and stars as lists, and a popularity key-value
# in each team and stars list are 3 teams and 3 sports stars 

sports = {
  hockey: {
    teams: [
      "Sharks",
      "Ducks",
      "Oilers"
    ],
    stars: [
      "Joe Thornton",
      "Connor Mcdavid",
      "Ryan Getzlaf"
    ],
    popularity: "low"
  },
  basketball: {
    teams: [
      "Warriors",
      "Clippers",
      "Lakers"
    ],
    stars: [
      "Steph Curry",
      "Kevin Durant",
      "Lebron James"
    ],
    popularity: "medium"
  },
  football: {
    teams: [
      "Patriots",
      "Panthers",
      "Seahawks"
    ],
    stars: [
      "Tom Brady",
      "Adrian Peterson",
      "Khalil Mack"
    ],
    popularity: "high"
  }
}

# prints Ducks
puts sports[:hockey][:teams][1]
# prints high
puts sports[:football][:popularity]
# prints Steph Curry 
puts sports[:basketball][:stars][0]
# prints 3 
puts sports.length
#length of string "medium", 6 
puts sports[:basketball][:popularity].length
