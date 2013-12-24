# The sum of the squares of the first ten natural numbers is:
# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is:
# (1 + 2 + ... + 10)**2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural 
# numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.

def sum_of_squares(num)
	sum = 0
	(1..num).each{|x| sum += x ** 2}
	sum
end

def square_of_sum(num)
	(1..num).inject(0,&:+) ** 2
end

puts square_of_sum(100) - sum_of_squares(100)
