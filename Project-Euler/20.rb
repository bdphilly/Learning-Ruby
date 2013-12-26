# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! 
# is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factorial(num)
	factorize = 1
	1.upto(num) do |x|
		factorize *= x
	end
	return factorize
end

number = String.new
number = factorial(100).to_s
number = number.split('')
puts number.inject(0){|x,y| x.to_i + y.to_i}