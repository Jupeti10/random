-- a^2 + b^2 + c^2
-- a+b+c = 1000

main = print $ head ptriplets

ptriplets = [a*b*c | a <- [1..1000], b <- [1..(1000-a)], c <- [1..(1000-a-b)],
            a+b+c == 1000,
            a^2 + b^2 == c^2]