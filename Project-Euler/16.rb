# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2**1000?

array = []
string = ""
count = 0

string = (2 ** 1000).to_s

(0..string.length).each do |i|
  array.push string[i]
end

puts array.inject(0) {|sum, current_index| sum + current_index.to_i}