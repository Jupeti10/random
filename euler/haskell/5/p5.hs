main = print $ head numbers

numbers = [ x | x <- [20, 40 ..], all (\y -> x `mod` y == 0 ) [20, 19 .. 11]] 
