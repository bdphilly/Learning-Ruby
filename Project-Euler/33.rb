# The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify 
# it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction, less than one in value, and 
# containing two digits in the numerator and denominator.

# If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

product = 1

(11..99).each do |original_numerator|
	(original_numerator + 1..99).each do |original_denominator|

		numerator = original_numerator.to_s.split('')
		denominator = original_denominator.to_s.split('')
		duplicate_num = numerator.select{|x| denominator.include?(x)}
		
		if duplicate_num != [] && duplicate_num != ['0']
			numerator -= duplicate_num
			denominator -= duplicate_num
			if denominator != ["0"] && denominator != []
				if (numerator.join.to_i.to_r/denominator.join.to_i.to_r) == (original_numerator.to_r/original_denominator.to_r)
					print original_numerator; print " / "; print original_denominator
					puts
					product *= (original_numerator.to_r/original_denominator.to_r).to_r
				end
			end
		end
	end
end

puts product