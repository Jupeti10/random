import Data.List


fillInt :: Int -> Int -> [Int]
fillInt n x = take n [x, x..]

calcDiag xs = map (dropWhile (== 1) . dropWhileEnd(==1)) 
                                    . transpose 
                                    . map (\(a,b) -> (fillInt a 1) ++ b ++ (fillInt (19-a) 1))
                                    $ zip [19,18..0] xs

main = do
    str <- readFile "data.txt"
    let normalMat  = map ( map (\x -> read x :: Int) . words) $ lines str
        transpMat  = transpose normalMat
        diagonalsL = calcDiag normalMat
        diagonalsR = calcDiag $ map reverse normalMat
        allrows    = normalMat ++ transpMat
                               ++ diagonalsL 
                               ++ diagonalsR
    print . maximum 
          $ allrows >>= (map (product . take 4) . tails)