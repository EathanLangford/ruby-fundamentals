=begin
Write a method that takes a number that represents Fahrenheit, 
and returns a number equivalent to it’s value in Celsius. 

Write a second method that takes an array of numbers in Fahrenheit, and that returns that an array with the numbers in celsius using your first function to make the calculation. 

In this instance, try to do this without forming a temporary array. (Hint: use a variation on the .each loop.)
=end

def fahrenheit_to_celcius(num)
    num*(9/5)+(32)
end

def calculation(arr)
    arr.map do |number|
        fahrenheit_to_celcius(number)
    end
end

puts calculation([23,56,73,84,99])

