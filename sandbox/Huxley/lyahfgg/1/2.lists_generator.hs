module Main where

list1 = [x | x <- [1..10]]
list2 = [x | x <- [50..100], odd x]
list3 = [if x < 30 then x / 2 else x * 2 | x <- [2,4..100], x  == 28 || x == 44]
quantityOfLivedDays = sum [1  | d <- [1..30], m <- [1..12], y <- [1990 .. 2017],  (y > 1994) || (y == 1994 && m > 2 && d > 14 ) ]

main = print (quantityOfLivedDays);