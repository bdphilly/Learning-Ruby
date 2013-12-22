# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

array = []

999.downto(100).each do |x|
	999.downto(100).each do |y|
		if (x * y).to_s.reverse == (x * y).to_s
			array << x * y
			break
		end
	end
end		


puts array.sort.last