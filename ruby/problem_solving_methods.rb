# Write method search_array that takes an array of integers and an integer
# Method should return the index of the number 
# Otherwise, return nil 
# Do not use .index

def search_array(array, number)
    if array.include?(number)
      number = (0..array.length - 1).select{|i| array[i] == number} 
    else
      nil
    end
  
  number
end

arr = [1,2,3,4,5]
puts search_array(arr, 2 )

# Define a method that takes one integer argument
# Method should generate and return an array of the terms of the Fibonacci sequence
# create an array in the method that has the 0, 1, 1 to start
# set and index to the second 1 in the array (index 2)
# go through a block that goes however many times as the integer argument
  # set a variable equal to the value of the current index plus the value
  # of the next index 
  # add that variable to the array and add 1 to the index variable 
# return the finished array after the iteration is done

def fibonacci(int)
  arr = [0, 1, 1]
  index = 2
  int.times{|i|
    i = arr[index] + arr[index - 1]
    arr << i 
    index +=1
  }
 arr 
end 

puts fibonacci(5)

# Bubble Sort 
# Create a method that takes a list of numbers
# Create a loop that only stops when none of the numbers need to be swapped
# Use a true/false to check if anything was swapped
# In the loop, go through the whole list, and if the first number is
# larger than the second number, switch them
# after the loop ends, return the sorted array \
# Example input: [1,8,2,3,5,1,4]
# Example output: [1,1,2,3,4,5,8]

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false 
    (n - 1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true 
      end 
    end 
    break if not swapped
  end
  array 
end 

a = [1,8,2,3,5,1,4]

p bubble_sort(a)

