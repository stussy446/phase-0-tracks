# Psuedocode "Encrypt"
#   Input: Receive a string
#   -Make an empty password variable
#   -Make a counter starting at zero
#   Algorithm
    # -Create a loop that executes until the counter variable is  equal to the string length
      # -For each index in the loop, identify the next character in the alphabet by using the .next method
      # -Add this .next value to our password variable
    # -After the loop is complete, return the password in reverse.
# Example input: "abc"
# Example output: "bcd"

def encrypt(string)
  counter = 0
  password = ""
  until counter == string.length
    if string[counter] == 'z'
      password = 'a'
    else
      password = string[counter].next + password
    end 
    counter +=1
  end
 password.reverse

end

# Decrypt Method
  # input: recieve a string 
  # make a counter starting at 0
  # define an empty variable for decrypted password 
  # Algorithm:
    # create a loop that executes until the counter equals the length of string
      # have a variable with entire alphabet (alphabet)
      # for each letter in the string, find the index of the letter in the alphabet, and store in a variable
      # use the letter variable as the index in the alphabet, and add the result to password
      # Add 1 to the counter
  # After the loop is done, print the password in reverse
  # example input: "bcd"
  # example output: "abc"

  def decrypt(word)
   counter = 0 
   password = ""
   until counter == word.length
     alphabet = "abcdefghijklmnopqrstuvwxyz"
     letter = alphabet.index(word[counter]) - 1
     counter += 1 
     password = alphabet[letter] + password
   end 
  password.reverse
   
 end 

# ----> TEST CASES (Release 3)<----

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# Nest Call 

# puts decrypt(encrypt("taco"))
# The method call works because the encrypt method and decrypt method will
# both return a string, so the value of one will work as the parameter of the other.

# ---------> INTERFACE <-------------

puts "Would you like to decrypt or encrypt today?"
strategy = gets.chomp
puts "What is the password?"
password = gets.chomp
if strategy == "encrypt" 
  result = encrypt(password)
elsif strategy == "decrypt"
  result = decrypt(password)
else 
  puts "Incorrect input"
end 

puts "Results: #{result}"
puts "Exiting.....BYE!"






 



