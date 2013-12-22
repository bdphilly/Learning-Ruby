# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

puts (0..999).inject{|sum, num| (num % 3 == 0 || num % 5 == 0) ? sum + num : sum} # I thought this was a clever way to do it in one line, with a conditional inside the inject method :)
