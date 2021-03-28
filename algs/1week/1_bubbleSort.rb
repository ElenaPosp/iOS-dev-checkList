
def swipe(arr:, firstIndex:, secondIndex:)
	# puts "swipe #{arr[firstIndex]} and #{arr[secondIndex]}"

	buffer = arr[firstIndex]
	arr[firstIndex] = arr[secondIndex]
	arr[secondIndex] = buffer

	arr
end

def sort (mainArr:, count:)
	
	sorted = mainArr

	for _ in (0..count-1).step(1) do
		

		i = 0
		while i < count - 1
			if sorted[i] > sorted[i+1]
				swipe(arr: sorted, firstIndex:i, secondIndex:i+1)
			end
			i = i+1
			# puts "i #{i} sorted #{sorted}"
		end
	end

	# puts "sorted #{sorted}"
	puts sorted.join(' ')
end

count = gets.chomp.to_i
strArr = gets.chomp
mainArr = strArr.split(" ").map(&:to_i)

sort(mainArr:mainArr, count:count)