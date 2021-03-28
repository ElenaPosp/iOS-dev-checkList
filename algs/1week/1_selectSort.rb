
def swipe(arr:, firstIndex:, secondIndex:)
	# puts "swipe #{arr[firstIndex]} and #{arr[secondIndex]}"
	buffer = arr[firstIndex]
	arr[firstIndex] = arr[secondIndex]
	arr[secondIndex] = buffer

	arr
end


def getMinIndex(arr:, start:)

	minIndex = start

	for i in (start..arr.count-1).step(1) do
		if arr[i] < arr[minIndex]
			minIndex = i
		end
	end

	# puts "min minIndex #{minIndex}"
	minIndex
end

def sort (mainArr:, count:)
	
	sorted = mainArr

	for i in (0..count-1).step(1) do
		minIndex = getMinIndex(arr:sorted,start:i)

		tempArr = swipe(arr:sorted, firstIndex:i, secondIndex:minIndex)
		sorted = tempArr
	end

	# puts "sorted #{sorted}"
	puts sorted.join(' ')
end

count = gets.chomp.to_i
strArr = gets.chomp
mainArr = strArr.split(" ").map(&:to_i)

sort(mainArr:mainArr, count:count)