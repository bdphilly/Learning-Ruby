# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10_001st prime number?

def prime?(num)
  (2..((Math.sqrt(num)).to_i)).each do |i|
    return false if num % i == 0
  end
  true
end

array = []
number = 3
until array.length == 9_999 #We already know 2 and 3 are prime, so we'll start the loop at 3 and increment by 2 to avoid counting even numbers
  number +=2
  if prime?(number)
    array << number
  end
end

puts array.last