main = print (sum $ filter(even) (takeWhile (<= 4000000) fib))

fib = 1 : 1 : map sumtuple (zip fib (tail fib)) 

sumtuple x = fst x + snd x
