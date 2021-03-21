def compare(x, y)
    if x == '(' and y == ')'
    	# puts 'compare ',x,y
    	true

    elsif x == '[' and y == ']'
    	# puts 'compare ',x,y
    	true

    elsif x == '{' and y == '}'
    	# puts 'compare ',x,y
    	true

    elsif x == '<' and y == '>'
    	# puts 'compare ',x,y
		true
    	
    else
    	false
    end
end


def goo(mainArr:, secArr:)
	while mainArr.count > 0

		last = mainArr.delete_at(mainArr.count - 1)
		secArr.push(last)
		puts 'mainArr', mainArr, 'secArr ', secArr

		result = compare(mainArr[mainArr.count - 1],secArr[secArr.count - 1])
		puts 'result ', result
		if result == true
			puts 'delete from mainArr', mainArr.delete_at(mainArr.count - 1)
			puts 'delete from secArr', secArr.delete_at(secArr.count - 1)
		end
	end
	if secArr.count > 0
		puts 'secArr ', secArr
		puts 'no'
		
	else 
		puts 'yes'
		
	end
	secArr
end


string = gets.chomp
mainArr = string.split(//)
lastArr = Array.new
resArr = goo(mainArr: mainArr, secArr: lastArr)

puts resArr

# if 










