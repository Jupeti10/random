main = print . sum $ takeWhile (< 2000000) primes

primes = 2 : filter (\x -> all(\y -> rem x y > 0 ) (takeWhile(\z -> z^2 <= x) primes)) [3, 5 ..]