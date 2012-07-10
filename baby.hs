-- Basics

doubleMe x = x + x
doubleMe' x = x * 2
doubleUs x y = doubleMe x + doubleMe y

list1 = [1,2,3]
list2 = [5,4,3]
-- cat two list
list = list1 ++ list2
-- : cons
list1' = 0 : list1

-- Lazy list
mul13 = [13,26..]
--take 10 mul13

-- List comprehension

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- An implementation of length
length' xs = sum [1 | _ <- xs]

removeNonUppercase str = [ c | c <- str, c `elem` ['A'..'Z']]

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

-- Project Euler Problem 9
euler9 = [ a*b*c | c <- [334..1000], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 1000]
euler9' = [ (a,b,c) | c <- [334..1000], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 1000]
euler9'' = [ (a,b,c) | c <- [334..1000], b <- [1..(min c 500)], a <- [1..(min b 333)], a^2 + b^2 == c^2, a+b+c == 1000]
--head euler9
