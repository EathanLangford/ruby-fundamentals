=begin 
*Problem 2*
Define a method that takes a number of feet, returns a number representing the total inches
another that takes a number representing inches and returns the number of centimetres. 

Define and call a third function called feet_to_cm that 
takes a number of feet and returns the number of centimetres, but that uses only our previous two functions.
Store that number in a well-named variable.
=end

def feet_to_inches input  #if 1 foot, 12 inches
    return input*12
end

def inches_to_cm input
    return input*2.54 #if 12 inches, 30cms
end

def feet_to_cm input
    result = inches_to_cm(feet_to_inches(input))
    return result
end

print feet_to_cm 1
