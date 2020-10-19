main = print $ lattice !! 20 !! 20

lattice = iterate (scanl1 (+)) $ repeat 1
