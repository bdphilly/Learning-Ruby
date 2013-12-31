# # The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

# # 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# # Let us list the factors of the first seven triangle numbers:

#1 #  1: 1
#2 #  3: 1,3
#3 #  6: 1,2,3,6
#4 # 10: 1,2,5,10
#5 # 15: 1,3,5,15
#6 # 21: 1,3,7,21
#7 # 28: 1,2,4,7,14,28
# # We can see that 28 is the first triangle number to have over five divisors.

# # What is the value of the first triangle number to have over five hundred divisors?

def divisors(num)
  sum = 0
  (1..Math.sqrt(num)).each do |x|
    if num % x == 0
      if x * x == num
        sum += 1
      else
        sum += 2
      end
    end
  end
  sum
end

def triangle(num)
  (num * num + num) / 2
end

i = 1

while divisors(triangle(i)) <= 500
  i+=1
end

puts triangle(i)