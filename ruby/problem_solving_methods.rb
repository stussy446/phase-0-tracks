# write method search_array that takes an array of integers and an integer
# method should return the index of the number 
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

#Define a method that takes one integer argument
#Method should generate and return an array of the terms of the Fibonacci sequence

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

