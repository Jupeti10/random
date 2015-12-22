import Data.List
import Data.Char
import System.Environment

main = do
    args <- getArgs
    case args of ("p1":_)  -> problem1
                 ("p2":_)  -> problem2
                 ("p3":_)  -> problem3
                 ("p4":_)  -> problem4
                 ("p5":_)  -> problem5
                 ("p6":_)  -> problem6
                 ("p7":_)  -> problem7
                 ("p8":_)  -> problem8
                 ("p9":_)  -> problem9
                 ("p10":_) -> problem10
                 (_) -> putStr "p1-p10"
                 
problem1 = print(sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0])

problem2 = print (sum $ filter(even) (takeWhile (<= 4000000) fib))

problem3 = print (filter (\i -> mod 600851475143 i == 0) (takeWhile (< 775146) primes))

problem4 = print $ maximum [ x * y | x <- [999,998 .. 100], y <- [999,998 .. 100], ismirror (x*y)]

problem5 = print $ head [ x | x <- [20, 40 ..], all (\y -> x `mod` y == 0 ) [20, 19 .. 11]] 

problem6 = print (squareofsum - sumofsquares)

problem7 = print $ primes !! 10000

problem8 = do
    str <- readFile "data8.txt."
    print . maximum 
          . map (product . take 13) 
          . tails 
          . map digitToInt 
          . concat 
          $ lines str
          
problem9 = print $ head [a*b*c | a <- [1..1000], b <- [1..(1000-a)], c <- [1..(1000-a-b)],
                      a+b+c == 1000,
                      a^2 + b^2 == c^2]

problem10 = print . sum $ takeWhile (< 2000000) primes

numbers = [1 .. 100]

sumofsquares = sum $ map ( ^ 2) numbers

squareofsum = (sum numbers) ^ 2

ismirror :: Int -> Bool
ismirror x = show x == (reverse $ show x)

primes = 2 : filter (\x -> all(\y -> rem x y > 0 ) (takeWhile(\z -> z^2 <= x) primes)) [3, 5 ..]

fib = 1 : 1 : map sumtuple (zip fib (tail fib)) 

sumtuple x = fst x + snd x