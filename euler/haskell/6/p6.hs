main = print (squareofsum - sumofsquares)

numbers = [1 .. 100]

sumofsquares = sum $ map ( ^ 2) numbers

squareofsum = (sum numbers) ^ 2
