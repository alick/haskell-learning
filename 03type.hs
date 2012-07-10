-- In ghci, use `:t expr` to inspect the type of the expression.

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase str = [ c | c <- str, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

factorial' n = product [1..n]

factorial'' 0 = 1
factorial'' n = n * factorial'' (n - 1)
