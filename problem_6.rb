=begin
Define the method ten_mult, which takes one argument (a number), 
and returns the result of that number multiplied by 10. 

Define a method called arr_mult that takes an array as an argument. 
In arr_mult, use the method ten_mult on each element of the array that was passed in as the argument. 
Return the array that results from this (each element multiplied by 10), 
and store in a well-named variable.
=end
numbers = [2,4,5,7,8,2]
def ten_mult(num)
    num*10
end


def arr_mult(arr)
    arr.map do |number|
        ten_mult(number)
    end
end

p result = arr_mult(numbers)