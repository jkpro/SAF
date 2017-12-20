module Main where

    maximus :: [Integer] -> Integer
    maximus [] = error "Array is empty"
    maximus (x:[]) = x;
    -- maximus (x: xs) 
    --             | x > right = x
    --             | otherwise = right
    --             where right = maximus xs
    maximus (x: xs) = let right = maximus xs in (if x > right then x else right)



    replicatus :: Integer -> a -> [a]
    replicatus count element 
                    | count <= 0 = error "Wrong count argument"
                    | count == 1 = [element]
                    | otherwise = element : replicatus (count - 1) element



    takeus :: Integer -> [a] -> [a]
    takeus _ [] = error "Array is emty"
    takeus count (x:xs) 
                    | count <= 0 = error "Wrong count argument"
                    | count == 1 = [x]
                    | otherwise = x : takeus (count - 1) xs

    
    -- main = print ( maximus [1,2,4,111, 2, 1] )
    -- main = print ( replicatus 2 23 );
    main = print ( takeus 4 [1,2,4,111, 2, 1] )