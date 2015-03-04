for item in 1..100 do
	if item%3 == 0
		puts 'Fizz'
	elsif item%5 == 0
		puts 'Buzz'
	elsif item%3 == 0 && item%5 == 0
		puts 'FizzBuzz'
	elsif item%3!=0 || item%5 != 0
		puts item
		
	end
end