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
      password = password + 'a'
    else
      password = string[counter].next + password
    end 
    counter +=1
  end
puts password.reverse
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



 def decrypt(string)
   counter = 0 
   password = ""
   until counter == string.length
     alphabet = "abcdefghijklmnopqrstuvwxyz"
     letter = alphabet.index(string[counter]) - 1
     counter += 1 
     password = alphabet[letter] + password
   end 
   puts password.reverse
 end 

 



 



