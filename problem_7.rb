=begin
Define a well-named method
 that takes one argument and returns ‘true’ if that argument is even, 
 and false if the argument is an odd number. 
 Define a method ‘div_or_mult_two’ which takes a number as an argument. 
 Using your first defined method, if the number is even 
 this method returns the result of that number divided by 2. 
 If the number is odd it 
 returns the result of that number multiplied by 2. 
 Store the result of a call to this method in a variable.
=end

def true_or_false(num)
    num % 2 == 0 ? true : false
end

def div_or_mult_two(num)
    true_or_false(num) ? num/2 : num*2
end

p div_or_mult_two(2)