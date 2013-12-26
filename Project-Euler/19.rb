# # 1 Jan 1900 was a Monday.
# # Thirty days has September,
# # April, June and November.
# # All the rest have thirty-one,
# # Saving February alone,
# # Which has twenty-eight, rain or shine.
# # And on leap years, twenty-nine.
# # A leap year occurs on any year evenly divisible by 4, 
# # but not on a century unless it is divisible by 400.

# # How many Sundays fell on the first of the month during the 
# # twentieth century (1 Jan 1901 to 31 Dec 2000)?

def leap_year?(year)
 	if year % 400 == 0
 		return true
 	elsif year % 100 == 0
 		return false
 	elsif year % 4 == 0
		return true
	end
	false
end

$one_day = 60*60*24

sum = 0

def add_month(time)
	current_month = time.month
	current_year = time.year

	if (current_month == 2 && leap_year?(current_year))
		return time + (29 * $one_day)
	elsif current_month == 2
		return time + (28 * $one_day)
	elsif [1,3,5,7,8,10,12].include?(current_month)
		return time + (31 * $one_day)
	elsif [4,6,9,11].include?(current_month)
		return time + (30 * $one_day)
	end
end

finish = Time.new(2001)
start = Time.new(1901)

time = start

until time > finish
	time = add_month(time)
	if time.wday == 0
		sum +=1
	end
end

puts sum