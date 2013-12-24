# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

(2..1000).each do |c|
	(2..c).each do |b|
		(2..b).each do |a|
			if ((a ** 2) + (b ** 2) == (c ** 2)) && (a + b + c == 1000)
				puts a * b * c
			end
		end
	end
end
