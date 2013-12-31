# A googol (10**100) is a massive number: one followed by one-hundred zeros; 100**100 is almost unimaginably large: 
# one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

# Considering natural numbers of the form, ab, where a, b < 100, what is the maximum digital sum?

max = 0

(1..99).each do |i|
	(1..99).each do |j|
		sum_of_digits = (i**j).to_s.chars.inject{|x,y| x.to_i + y.to_i}.to_i
		max = sum_of_digits if sum_of_digits > max
	end
end

puts max