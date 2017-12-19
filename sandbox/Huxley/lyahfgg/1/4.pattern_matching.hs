module Main where

sayMe :: Int -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
-- sayMe 5:6 = "five six"
-- sayMe 5..10 = "range" not working
sayMe x = "Some x value";

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)
-- factorial 0 = 1 -- will throw overflow
fucktotorial n = product [ x | x <- [1..n]] 

addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
arrayMatching :: [Int] -> Int
arrayMatching [21,22] = 22
arrayMatching [21,210] = product [1..10]
arrayMatching (1:[]) = 1

oneMoreFactorial :: [Int] -> Int
oneMoreFactorial (1:[]) = 1
oneMoreFactorial (x: xs) = x * (oneMoreFactorial xs)
-- main =  print (addVectors (1, 2) (3, 4));

longArgsList :: (Show a) => [a] -> String
longArgsList (b:c:d:e:f:_) = "b=" ++ show b ++ " b=" ++ show b ++ " c=" ++ show c ++ " d=" ++ show d ++ " e=" ++ show e ++ " f=" ++ show f

-- main =  print (factorial 5);
-- main =  print (fucktotorial 5);
-- main =  print (oneMoreFactorial [5,4..1]);
main = print (longArgsList [1..666])