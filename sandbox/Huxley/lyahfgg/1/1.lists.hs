module Main where

sampleList = [1,2,3,4,5,6]
sampleList2 = [6,5,4,3,2,1]
contacLists = sampleList ++ sampleList2
someConst = 8 * 11
someConst2 = 1 + 2 + 3 + 4 + 4
contacLists2 = someConst : someConst2  : contacLists 
someConst3 = contacLists2 !! 0 * 100 + contacLists2 !! 1
someConst4 = contacLists2 !! 2 * 1000 + contacLists2 !! 5 * 100 + (contacLists2 !! 6 +  contacLists2 !! 7) * 8

main =  print (someConst4); -- print(someConst3)