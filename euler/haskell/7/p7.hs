main = print $ primes !! 10000

primes = 2 : filter (\x -> all(\y -> rem x y > 0) (takeWhile(\z -> z^2 <= x) primes)) [3, 5 ..]
