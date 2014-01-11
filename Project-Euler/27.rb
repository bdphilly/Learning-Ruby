# Euler discovered the remarkable quadratic formula:

# n² + n + 41

# It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. 
# However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, 
# and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.

# The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes for the 
# consecutive values n = 0 to 79. The product of the coefficients, −79 and 1601, is −126479.

# Considering quadratics of the form:

# n² + an + b, where |a| < 1000 and |b| < 1000

# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |−4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression that produces the 
# maximum number of primes for consecutive values of n, starting with n = 0.

def prime?(num)
	return false if num < 2
	(2..Math.sqrt(num)).each do |x|
		if num % x == 0
			return false
		end
	end
	true
end

max_count_primes = 0
coefficient = Integer

(0..1000).each do |a|
	(0..1000).each do |b|
		count_of_primes = 0
		(0..200).each do |n|
			if prime?(n**2 - a * n + b) # I tested all cases of +a +b; +a -b, -a +b, -a -b and this case produces the most consecutive primes
				count_of_primes += 1
			else
				break
			end
		end
		if count_of_primes > max_count_primes
			max_count_primes = count_of_primes
			coefficient = -a * b
		end
	end
end

puts coefficient