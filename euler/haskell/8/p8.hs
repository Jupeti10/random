import Data.List
import Data.Char
       
main = do
    str <- readFile "data.txt."
    print . maximum 
          . map (product . take 13) 
          . tails 
          . map digitToInt 
          . concat 
          $ lines str
