
def swipe(arr:, firstIndex:, secondIndex:)
	# puts "swipe #{arr[firstIndex]} and #{arr[secondIndex]}"
	buffer = arr[firstIndex]
	arr[firstIndex] = arr[secondIndex]
	arr[secondIndex] = buffer

	arr
end

def sort (mainArr:, count:)
	
	sorted = mainArr

	for i in (1..count-1).step(1) do
		# puts "i #{i} sorted #{sorted}"

		k = i
		while (sorted[k-1] > sorted[k]) && (k > 0)

			swipe(arr:sorted, firstIndex:k-1, secondIndex:k)
			# puts "k #{k} sorted #{sorted}"
		 	k = k-1
		end

	end

	# puts "sorted #{sorted}"
	puts sorted.join(' ')
end

count = gets.chomp.to_i
strArr = gets.chomp
mainArr = strArr.split(" ").map(&:to_i)

sort(mainArr:mainArr, count:count)