main = print $ maximum [ x * y | x <- [999,998 .. 100], y <- [999,998 .. 100], ismirror (x*y)]

ismirror :: Int -> Bool
ismirror x = show x == (reverse $ show x)
