# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; 
# for example, the 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, 
# and product is 1 through 9 pandigital.

# Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 
# 1 through 9 pandigital.

# HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

def multipliers(num)
	multiplicands = []
	(1..(num / 2)).each do |x|
		if num % x == 0
			multiplicands << x
		end
	end
	multiplicands
end

def determine_pandigital(num)
	array = multipliers(num)
	(0..array.length-2).each do |x|
		(1..array.length-1).each do |y|
			if array[x] * array[y] == num && ((array[x].to_s + array[y].to_s + num.to_s).split('').sort.join == "123456789")
				return true
			end
		end
	end
	false
end

array = []

(0..10000).each do |num|
	if determine_pandigital(num) == true
		array << num
	end
end

puts array.inject(0,&:+)
