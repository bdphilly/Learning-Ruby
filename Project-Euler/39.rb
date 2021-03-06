# If p is the perimeter of a right angle triangle with integral length sides, 
# {a,b,c}, there are exactly three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p ≤ 1000, is the number of solutions maximised?

# # # {20,48,52}, {24,45,51}, {30,40,50}

counts = {}
counts.default = 0

(1..499).each do |a|
	(a..499).each do |b|
		break if a + b > 500
		c = Math.sqrt(a**2 + b**2)
		next unless c.denominator == 1
		counts[a+b+c] += 1
	end
end

puts counts.sort_by{|x,y|[y,x]}.last