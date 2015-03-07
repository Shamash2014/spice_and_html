#Without methods

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

# With methods
def fizz(item)
	item%3 == 0
	True
end
def buzz(item)
	item%5 == 0
	True
end

for item in 1..100
	if fizz(item) == True
		puts "Fizz"
	elsif buzz(item) == True
		puts "Buzz"
	elsif fizz(item) == True && buzz(item) == True
		puts "FizzBuzz"
	else
		puts item
	end
end

for item in 1..100
	puts "Fizz" if item%3 == 0
	puts "Buzz" if item%5 ==0
	puts "FizzBuzz" if item%3 ==0 && item%5 == 0
	puts item
end