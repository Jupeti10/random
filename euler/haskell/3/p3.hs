main = print (filter (\i -> mod 600851475143 i == 0) (takeWhile (< 775146) primes))

primes = 2 : filter (\x -> all(\y -> rem x y > 0 ) (takeWhile(\z -> z^2 <= x) primes)) [3, 5 ..]
