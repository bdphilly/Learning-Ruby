def bubble(array)
	return array if array.length < 2
	swapped = true
	while swapped
		swapped = false
		(0..array.length-2).each do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
	end
	array
end