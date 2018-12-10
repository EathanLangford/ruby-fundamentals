=begin
Your shop sells right-angled-triangular tables. 
The client is charged for the volume of the table. 
Write a function that takes two arguments, and works out the area of the triangle. 

Write a second function that takes two arguments, one representing the area of the top of the table, and the 

other representing the height (from the ground) and returns the volume. 

Write a third method that performs no calculations, but takes three arguments and uses the previous two methods to return the volume of the table. Store that volume in a well-named variable.
=end
def area_of_triangle(b, h)
    0.5*b*h
end

def volume_of_triangle(a, h)
    a*h
end

def table(a, b, h)
    volume_of_triangle(area_of_triangle(b, h),h)
end
puts table(4, 5, 7)


