# write method search_array that takes an array of integers and an integer
# method should return the index of the number 
# Otherwise, return nil 
# Do not use .index

def search_array(array, number)
  array.each{|item| 
    if item == number 
      puts item
    else
      nil
    end
  }
end

arr = [1,2,3,4,5]
search_array(arr, 2)