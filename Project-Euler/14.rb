# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3*n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def next_num(x)
  x % 2 == 0 ? x / 2 : x * 3 +1
end

sequences = {} #hash of (sequence_number => sequence_length)

max_sequence_start = 0
max_sequence_length = 0

sequence_length = 0
sequence_number = 0

1.upto(999_999) do |num|
  sequence_length = 1
  sequence_number = num

  while sequence_number > 1
    if !sequences[sequence_number]
      sequence_number = next_num(sequence_number)
      sequence_length +=1
    else
      sequence_length += sequences[sequence_number] - 1
      break
    end
  end

  sequences[num] = sequence_length

  if sequence_length > max_sequence_length
    max_sequence_start = num
    max_sequence_length = sequence_length
  end

end

puts "Solution start: #{max_sequence_start}, total numbers in chain: #{max_sequence_length}"
