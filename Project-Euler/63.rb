# The 5-digit number, 16807=7**5, is also a fifth power. Similarly, the 9-digit number, 134217728=8**9, is a ninth power.

# How many n-digit positive integers exist which are also an nth power?

count = 0

(1..50).each do |i|
	(1..50).each do |j|
		count += 1 if (i ** j).to_s.length == j
	end
end

puts count