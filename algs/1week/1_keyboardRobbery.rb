
def swipe(arr:, firstIndex:, secondIndex:)
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
	minIndex
end

def sort (mainArr:)
	count = mainArr.count
	sorted = mainArr

	for i in (0..count-1).step(1) do
		minIndex = getMinIndex(arr:sorted,start:i)
		tempArr = swipe(arr:sorted, firstIndex:i, secondIndex:minIndex)
		sorted = tempArr
	end
	# puts sorted.join(' ')
end

keyBoardCount = gets.chomp.to_i
strArr = gets.chomp
mainArr = strArr.split(" ").map(&:to_i)

sort(mainArr:mainArr)
# puts "end #{mainArr}"
min = mainArr.first
max = mainArr.last
# puts "min #{min} max #{max} kcount #{keyBoardCount}"

vsego = max - min + 1
ukradeno = vsego - keyBoardCount
# puts "vsego #{vsego} ukradeno #{ukradeno}"
puts ukradeno

