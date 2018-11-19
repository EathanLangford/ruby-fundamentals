=begin
Define 4 methods. The first takes a string (as an argument), and then returns the string + “ will be”, the second takes a string, and returns the string + “ won’t be”, the third takes a string and returns the string + “ impeached.” and the fourth is called trump_predictor. trump_predictor takes a string, but then you must use the previous functions to get from this method call trump_predictor(“Trump”) to whatever outcome you think is more likely, but using only the previously defined functions. Store the output of trump_predictor in a well named variable. (For example, if you think he won’t be impeached, only call the methods that matter, so the output string will be “Trump won’t be impeached.”.)
=end

def will_be name
    return name + " will be"
    #This will pass 'name' as the argument in the will_be method. returning whatever we set 'name' as + the string "will be"
end 

def wont_be name
    return name + " won't be"
     #This will pass 'name' as the argument in the will_be method. returning whatever we set 'name' as + the string "will be"
end

def impeached choice
    return choice + " impeached"
    #this will pass 'choice' as the argument for impeached, then + "impeached". we will define choice when we pass 'will be' through it to get our result
end

def trump_predictor president
    return impeached(will_be(president))
    # this runs trump predictor with whatever we set as president, it will then pass that through impeached, which is running will be, first
    # with our argument we set when we run the last method, trump_predictor.
    # this will trickle feed president(whatever string we set) through the methods. 
end

president = trump_predictor("Trump")
p president
