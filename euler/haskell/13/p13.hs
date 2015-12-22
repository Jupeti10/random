main = do
    str <- readFile "data.txt"
    print . take 10 
          . show 
          . sum 
          . map (\x -> read x ::Integer) 
          . map (take 11) 
          $ lines str