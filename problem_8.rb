=begin
Define a method that takes an array of numbers, and returns the total of the addition of all the numbers in the array. Store the result of a call to this method in a well-named variable.
=end
numbers = [3,5,8,6,3,6,5,3]
def total(arr)
    arr.reduce( :+ )
end

p result = total(numbers)

