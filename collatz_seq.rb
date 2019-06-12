def collatz(n)
	sequence = 1
	if n <= 0
		raise ArgumentError.new 'Postive integers only'
	end
	while n != 1
		sequence += 1
		n = n.even? ? (n / 2) : (n * 3 + 1)
	end
	return sequence		
end

def max_collatz
	largest_length = 0
	largest_number = 0
	(1..1000000).each do |n|
		length = collatz(n)
		if length > largest_length
			largest_length = length
			largest_number = n
		end
	end
	{:largest_number => largest_number, :largest_length => largest_length}
end			

puts max_collatz