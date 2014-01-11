# It was proposed by Christian Goldbach that every odd composite number 
# can be written as the sum of a prime and twice a square.

# 9 = 7 + 2×1**2
# 15 = 7 + 2×2**2
# 21 = 3 + 2×3**2
# 25 = 7 + 2×3**2
# 27 = 19 + 2×2**2
# 33 = 31 + 2×1**2

# It turns out that the conjecture was false.

# What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

def prime?(num)
	return nil if num < 2
	(2..Math.sqrt(num)).each do |x|
		if num % x == 0
			return false
		end
	end
	true
end

def composites(max)
	composites = []
	(3..max).each do |num|
		next if num % 2 == 0
		next if prime?(num)
		composites << num
	end

	composites

end

def primes(max)
	primes = []
	(2..max).each do |num|
		primes << num if prime?(num)
	end
	primes
end

def goldbach(num)

	prime_nums = primes(num)
	composite_nums = composites(num)

	array = []

	prime_nums.each do |prime|
		x = 1
		conjecture = 1
		while conjecture <= num
			conjecture = prime + 2 * (x ** 2)
			if composite_nums.include?(conjecture)
				array << conjecture
			end
			x += 1
		end
	end
	array
end

puts (composites(10000) - goldbach(10000).sort).min