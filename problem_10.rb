=begin
Write a method that takes one argument, a number, and that returns true if the number is divisible by three, and false otherwise. 
Write another method that takes an array (of numbers) as an argument. 
This method will return two arrays, in one array (an array of arrays), 
the first array containing the numbers that are divisible by 3, and the other of the rest of the numbers. 
use the first function to achieve this. For example, if you pass the second number [9, 4, 3, 5, 30, 2, 8] it would return [[9, 3, 30],[4, 5, 2, 8]].
=end
array = [1,4,6,7,4,6,8]



def method1(num)
num % 3 == 0 ? true : false
end

def method2(arr)
    arr1 = []
    arr2 = []
    arr.each do |number|
      if method1(number) == true
        arr1 << number
      else
        arr2 << number
      end
    end
    arr3 = Array.new
    arr3 << arr1
    arr3 << arr2
    
  end
result = method2(array)
p result

#METHOD USING YIELD - doesnt work.
# def array_split(arr)
#   final_arr = []
#   true_arr = []
#   false_arr = []

#   arr.each do |item|
#     if yield(item)
#       true_arr << item
#     else
#       false_arr << item
#     end
#     final_arr = [true_arr, false_arr]
#   end
#   end
  
#   p array_split([2,3,5,8,8,6,5,4,3,7,3,2,3,4]) do |item|
#     item % 3 == 0 
#   end