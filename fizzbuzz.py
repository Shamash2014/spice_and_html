#simple
for item in range(1, 100):
	if item % 5 == 0 and item % 3 == 0:
		print("FizzBuzz")
	elif item % 5 ==0 and not(item % 3 == 0):
		print("Buzz")
	elif item % 3 == 0 and not(item % 5 == 0):
		print("Fizz")
	elif not(item % 5 == 0) and not(item % 3 == 0):
		print(item)
#with methods
def fizz(item):
	item % 3 == 0
	print("Fizz")
	return item
def Buzz(item):
	item % 5 == 0
	print("Buzz")
	return item
for item in range(1, 100):
	if fizz(item) == True:
		print(fizz(item))
	elif Buzz(item) == True:
		print(Buzz(item))
	elif fizz(item) == True and Buzz(item) == True:
		print("FizzBuzz")
	else:
		print(item)

