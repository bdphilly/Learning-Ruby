# It can be seen that the number, 125874, and its double, 251748, 
# contain exactly the same digits, but in a different order.

# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

def same?(a, b)
	return true if a.to_s.chars.sort.join == b.to_s.chars.sort.join
	false
end

x = 1

loop do
	break if (2..6).all?{|n| same?(n*x, x)}
	x += 1
end

puts x