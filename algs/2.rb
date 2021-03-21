# a = gets

# first_number = a[0].to_i
# second_number = a[1].to_i

# puts first_number + second_number
ar = Array.new

while true
	a = gets.chomp

	if a == 'pop'
		if ar.count > 0
			puts ar.delete_at(ar.count - 1)
		else 
			puts 'error'
		end

	elsif a == 'back'
		if ar.count > 0
			puts ar[ar.count - 1]
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