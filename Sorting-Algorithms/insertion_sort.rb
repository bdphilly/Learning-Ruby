def insertion(array)
	return array if array.length < 2
	(1..array.length-1).each do |x|
		value = array[x]
		y = x-1
		while y >= 0 && value < array[y]
			array[y+1] = array[y]
			y -= 1
		end
		array[y+1] = value
	end
	array
end