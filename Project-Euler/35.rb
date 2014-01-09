# The number, 197, is called a circular prime because all rotations of the digits: 
# 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

def prime?(num)
	(2..Math.sqrt(num)).each do |x|
		if num % x == 0
			return false
		end
	end
	return true
end

def circular(num)
	array = num.to_s.split('').map{|x| x.to_i}
	circulars = []
	(0..array.length-1).each do |x|
		mover = array.shift
		array.push(mover)
		circulars << array.join.to_i
	end
	circulars
end

def circular_prime?(num)
	circulars = circular(num)
	circulars.each do |x|
		return false if !prime?(x)
	end
	true
end

counter = 0

(2..1_000_000).each do |num|
	counter += 1 if circular_prime?(num)
end

puts counter