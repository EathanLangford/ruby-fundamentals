# Define a method five_times 
# which takes a number as an argument and 
# returns the value that results when the argument is multiplied by 5. 

# Define a method hund_times, 
# which takes and argument and returns the result of that argument being multiplied by 100. 

# Define a method div_seven which takes an argument and returns the result of that argument divided by 7. 

# Define a method number_mangle which takes one argument 
# and which uses only those previously defined functions to multiply that argument by
#  5, 100, and then divide by 7 - that is, number_mangle will contain no direct calculations. 
# Store that result in a variable.

def five_times(num)
    return num*5.0
end

def hund_times(num)
    return num*100.0
end

def div_seven(num)
    return num/7.0
end

def number_mangle(num)
    div_seven(hund_times(five_times(num)))
end

result = number_mangle(1)

p result
