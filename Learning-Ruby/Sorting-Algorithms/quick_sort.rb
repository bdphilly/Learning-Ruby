def quicksort(array)
	return [] if array == []
	pivot = array.shift
	less,more = array.partition{|y| y < pivot} #this was a really cool method I discovered that reduced several lines of code :)
	quicksort(less) + [pivot] + quicksort(more)
end