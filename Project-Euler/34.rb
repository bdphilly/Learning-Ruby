# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

def factorial(num)
	return 1 if num <= 1 # NOTE: 0! == 1
	num * factorial(num -1)
end

def digits_array(num)
	num.to_s.split('').map {|x| x.to_i}
end

# I thought finding the upper bound was the trickiest part and I'm not sure yet if there is a mathematical trick
# to avoid a brute force program, as this took roughly 53 seconds for me to solve (and we don't get anywhere
# near the upper bound with the solution)

# The largest 7 digit number, 9_999_999, as a sum of factorials of digits would == 7 * 9! == 2_540_160
# Any 8 digit number is larger than the maximum possible result of the sum of factorials of the digits -
# For example, the largest 8 digit number, 99_999_999 is equal to 8 * 9! == 2_903_040, which is less than
# 10_000_000, the smallest 8 digit number.

maximum = 7 * factorial(9)
numbers = []

(3..maximum).each do |i|
	if digits_array(i).inject(0){|sum, num| sum + factorial(num)} == i
		numbers << i
	end
end

puts numbers.inject(0,&:+)
