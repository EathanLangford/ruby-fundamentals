=begin
Write a method that takes two arrays of numbers, both of the same length. 
It will return an array in which each element is the result of the corresponding elements in the two array arguments added together. Make a call to your method, and store the result in a well-named variable.
=end
result = []
def method(arr1, arr2)
    if arr1.length == arr2.length
    result = []
    arr1.each_with_index do |number, i|
        result << arr1[i]+arr2[i]
        i.next
    end
    return result
else
    puts "the arrays aren't the same length"
end
end

p addition_of_arrays = method([1,3,3,6,2], [4,8,6,5,4])