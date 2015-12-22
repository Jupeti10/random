main = print $ head [ x | x <- [20, 40 ..], all (\y -> x `mod` y == 0 ) [20, 19 .. 11]] 
