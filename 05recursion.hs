quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = sortedSmaller ++ [x] ++ sortedLarger
    where sortedSmaller = quicksort [a | a <- xs, a <= x]
          sortedLarger = quicksort [a | a <- xs, a > x]
