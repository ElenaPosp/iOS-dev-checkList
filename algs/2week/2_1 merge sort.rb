
def merge(firstArr:, secondArr:)
	commonArr = Array.new

	pointer1 = 0
	pointer2 = 0

	while true
		if pointer1 >= firstArr.count
			while pointer2 < secondArr.count
				commonArr.push(secondArr[pointer2])
				pointer2 +=1
			end
			break

		elsif pointer2 >= secondArr.count
			while pointer1 < firstArr.count
				commonArr.push(firstArr[pointer1])
				pointer1 +=1	
			end
			break

		end 

		if firstArr[pointer1] <= secondArr[pointer2]
			commonArr.push(firstArr[pointer1])
			pointer1 +=1
		else
			commonArr.push(secondArr[pointer2])
			pointer2 +=1
		end
	end
	# puts "result #{commonArr}"
	commonArr
end

def sort(mainArr:, count:)
	if mainArr.count == 1
		puts "#{mainArr.last.join(" ")}"
		exit
	end
	newArr = Array.new

	for i in (0..mainArr.count-2).step(2) do
		a = merge(firstArr:mainArr[i],secondArr:mainArr[i+1])
		newArr.push(a)
		# puts "i #{i} arr #{a}"
	end

	if !mainArr.count.even? 
		newArr[newArr.count-1] = merge(firstArr:newArr.last,secondArr:mainArr.last)
	end
	# puts "newArr #{newArr}"
	sort(mainArr: newArr,count: newArr.count)
end

count = gets.chomp.to_i
strArr = gets.chomp
mainArr = strArr.split(" ").map(&:to_i).each_slice(1).to_a
sort(mainArr: mainArr, count: count)
