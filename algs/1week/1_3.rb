
def check mainArr 

	opening = ["(", "{", "[", "<"]
	closing = [")", "}", "]", ">"]

	stack = Array.new
	# puts mainArr
	for bracket in mainArr 
		if opening.include? bracket
			stack.push(bracket)

		elsif closing.include? bracket

			lastInStack = stack.last
			# puts "lastInStack #{lastInStack}"

			if closing.index(bracket) == opening.index(lastInStack)
				# puts "pop #{stack.pop}"
				stack.pop
			else
				puts "no"
				exit
			end
		end

		# puts "stack #{stack}" 

		 	 
	end

	if stack.count > 0 
		puts "no"
	else
		puts "yes"
	end
	
end

string = gets.chomp
mainArr = string.split(//)

check(mainArr)