# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

def prime?(num)
	(2..Math.sqrt(num)+1).each do |i|
		if num % i == 0
			return false
		end
	end
	return true
end

def prime_factors(num)
	primes = []
	(2..Math.sqrt(num)+1).each do |x|
		if num % x == 0 && prime?(x)
			primes << x
		end
	end
	primes
end

puts prime_factors(600851475143).last