=begin
Using these actual figures, make a method (or methods) that takes as an argument a person’s income, and returns the amount of tax that should be paid on that income (before being fiddled about with various exemptions and deductibles). Return a hash of the raw tax payable (in dollars), and what percentage of the person’s income that represents.
$0 – $18,200 Nil
$18,201– $37,000 19c for each $1 over $18,200
$37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000
$87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000
$180,001 and over $54,232 plus 45c for every $1 over $180,000
=end

def tax(income)
    results = {
                tax_payable: "nil",
                percentage: "nil"
    }
if income.between?(0,18200)
    # p "TEST 1"
    p results
elsif income.between?(18201,37000)
    # p "TEST 2"
    # $18,201– $37,000 19c for each $1 over $18,200
    results[:tax_payable] = ((income - 18200)*0.19)
    results[:percentage] = (results[:tax_payable]/income)*100
    p results
elsif income.between?(37001,87000)
    # p "TEST 3"
    # $37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000
    results[:tax_payable] = ((income - 37000)*0.325)+3572
    results[:percentage] = (results[:tax_payable]/income)*100
    p results
elsif income.between?(87001,180000)
    # p "TEST 4"
    # $87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000
    results[:tax_payable] = ((income - 87000)*0.37)+19822
    results[:percentage] = (results[:tax_payable]/income)*100
    p results
elsif income.between?(180001,Float::INFINITY)
    # p "TEST 5"
    # $180,001 and over $54,232 plus 45c for every $1 over $180,000
    results[:tax_payable] = ((income - 87000)*0.45)+54232
    results[:percentage] = (results[:tax_payable]/income)*100
    p results
    end
end

tax(57200)