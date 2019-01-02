=begin
You jam in the most number of apartments per floor that regulations will allow. 

You write one method that calculates the area of floorspace from two arguments, the length and width. 

You write a second method that takes an area, and calculates the number of apartments you can fit within a given floorspace (you can fit one apartment in every 28 square meters, and this should be rounded down - you can’t have a partial apartment). 

You write a third method that takes a number of floors, a length, and a width as arguments, and that returns a hash of the total number of apartments you can jam into the building, and the total money made (assuming each apartment is worth $120,000) using the previous two methods.
=end

def area(length, width)
    length*width
end
# test = area(30, 50)
def appartments_in_floorspace(area)
    (area/28).to_i
end
# p test = (appartments_in_floorspace(test))
def calculation(floors, length, width)
    total={
        appartments: nil, 
        revenue: nil
    }
    appartment_calc = floors*appartments_in_floorspace(area(length, width))
    revenue_sum = appartment_calc * 120000
    total[:revenue] = revenue_sum
    total[:appartments] = appartment_calc
    return total
end
p calculation(20, 30, 40)
