import Data.List
import Data.Maybe

main = print . fst . fromJust . find (\x -> (snd x) > 500 ) $ zip naturals (map divisors naturals)

naturals = scanl1 (+) [1..]

divisors x = (length $ filter (\z -> rem x z == 0) $ takeWhile (\y -> y*y <= x) [1..]) * 2

