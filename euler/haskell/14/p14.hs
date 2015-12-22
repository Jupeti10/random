import Data.List
import Data.Function (on)

main = print . fst . maximumBy (compare `on` snd) . take 1000000 . zip [1..] $ map collaz [1..]

collaz' :: Int -> Int -> Int
collaz' 1 x          = x
collaz' x y | even x = collaz' (div x 2) $ succ y
collaz' x y          = collaz' (succ (3*x)) $ succ y

collaz x = collaz' x 1