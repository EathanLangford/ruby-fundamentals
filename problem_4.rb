=begin
100 students are sitting in a row, and each has a hat on. 
walks along the line of students (starting from the same end each time). 
The first time he takes every hat off. 
On the second pass he toggles the state of every second hat (putting on if off, taking off if on),

changing the ‘hat state’ of every even numbered student. 

The third pass he toggles every third hat. The fourth every fourth, and the fifth every fifth, and so on until he has passed the students 100 times. What is the final state of the hats (ie, which students have a hat on or off)?
=end

students = Array.new(100, true)
counter = 1
# p students
while counter <= 100
    students.each_with_index do |value, i|
        if (i+1) % counter == 0 
            students[i] = !value
        end 
    end
    counter += 1
end
puts students