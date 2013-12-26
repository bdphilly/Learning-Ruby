# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# NOTE: I tried to do this one brute force but it was taking too long to solve. There are a few ways one could
# tackle it - one way is multiplying all the prime factors, because any Least Common Multiple will include those,
# but it's a little tricky figuring out how many multiples of each factor are needed, hence the use of Math.log

# def prime?(num)
#   (2..(num - 1).each do |i|
#   	if (num % i) == 0
#   		return false
#   	end
#   end
#   true
# end

# array = []

# (2..20).each do |i|
# 	if prime?(i)
# 		if ((Math.log(20)/Math.log(i)).floor) != 1
# 			array << (i**((Math.log(20)/Math.log(i)).floor))
# 		else
# 		  array << i
# 		end 
# 	end
# end
# puts array.inject(:*)

# But another creative solution that I like can be found by noticing a pattern:

# If we make a triangle of Least Common Multiples (LCM):
# 1,2 = 2
# 1,2,3 = 6
# 1,2,3,4 = 12
# 1,2,3,4,5 = 60
# 1,2,3,4,5,6 = 60
# 1,2,3,4,5,6,7 = 420

# For each additional number, if the previous LCM is not divisible by the new number, 
# We simply add the previous LCM to itself until we can prove this condition true

current_multiple = 1

(1..20).each do |i|
	previous_multiple = current_multiple
	while current_multiple % i != 0
		current_multiple += previous_multiple
	end
end

puts current_multiple

# Only takes a few lines :)
