ar = Array.new

while true
	a = gets.chomp

	if a == 'pop'
		if ar.count > 0
			puts ar.delete_at(0)
		else 
			puts 'error'
		end

	elsif a == 'front'
		if ar.count > 0
			puts ar[0]
		else 
			puts 'error'
		end
		

	elsif a == 'size'
		puts ar.count

	elsif a == 'clear'
		ar.clear
		puts 'ok'

	elsif a == 'exit'
		puts 'bye'
		exit

	elsif a.split[0] == 'push'
		ar.push(a.split[1])
		puts 'ok'
	end
end