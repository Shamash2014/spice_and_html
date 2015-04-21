prod x y = x * y
printString str = putStrLn str
printSqrt x = putStrLn ("Sqrt of " ++ show x ++ "=" ++ show(sqrt x))
printSqrt1 x = 
	if x < 0
	then putStrLn "X < 0!"
	else putStrLn ("Sqrt of " ++ show x ++ "=" ++ show(sqrt x)) 
printSqrt2 x = case x < 0 of
	True -> putStrLn "x < 0!"
	False -> putStrLn ("Sqrt of " ++ show x ++ "=" ++ show(sqrt x))

describeLocation locNumber = case locNumber of
	1 -> "You are standing in the middle of the Island"
	2 -> "You are standing between two armies at the field of battle"

fUncT x t b = ((7* x^3 - logBase(abs t) 10) / 2.7 * b)
fUncY t z = (sin t) - (sin z) 
fUncZ t y = 8.87 * y ^3 + atan(t)
