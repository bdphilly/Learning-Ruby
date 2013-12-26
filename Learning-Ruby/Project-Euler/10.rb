# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def prime?(num)
	(2..Math.sqrt(num)).each do |x|
		if num % x == 0
			return false
		end
	end
	true
end

count = 2

for j in 2..2_000_000
	if prime?(j)
		count += j
	end
end

puts count - 2