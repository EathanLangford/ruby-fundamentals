#Define an array with three numbers in it.
#write a method that takes two arguments. 
#The first argument will be an array. The second will be a number. 
#to return the array that would 
#result if each element in the array was multiplied by the second argument. Return the result. Call this function with your array and an argument of your choice, and store the result in a well-named variable.
arr = [1, 3, 5]
def multiply(arr, num)
    result = arr.map {|number| number * num}
end
result = multiply(arr, 3)
p result
