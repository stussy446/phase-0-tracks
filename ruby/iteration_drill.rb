# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

# zombie_apocalypse_supplies.each{|supply| print "#{supply}*"}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
loop do 
  swapped = false 
  count = zombie_apocalypse_supplies.length 
  (count -1).times do |item|
    if zombie_apocalypse_supplies[item] > zombie_apocalypse_supplies[item + 1]
      zombie_apocalypse_supplies[item], zombie_apocalypse_supplies[item + 1] = zombie_apocalypse_supplies[item + 1], zombie_apocalypse_supplies[item]
      swapped = true
    end 
  end 
  break if not swapped 
end 
#puts zombie_apocalypse_supplies




# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def is_it_here(arr, item)
  my_supplies = []
  arr.each do |supply|
    if item == supply
      my_supplies << item
      puts "#{item} is in my supplies"
    end 
  end 
  if my_supplies.length == 0
      puts "Not here"
  end
end

#is_it_here( zombie_apocalypse_supplies, "beans") 

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
zombie_apocalypse_supplies.each do|item|
  deleter = []
  deleter << item
  zombie_apocalypse_supplies = zombie_apocalypse_supplies - deleter
  if zombie_apocalypse_supplies[5] == nil
    break
  end
end
 #puts zombie_apocalypse_supplies


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

all_supplies = (zombie_apocalypse_supplies + other_survivor_supplies).uniq
puts all_supplies



# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
