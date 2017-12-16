tuple1 = (1, 2)

list1 = [x * 2 | x <- [1 .. 20 ]]
list2 = [x * 8 | x <- [5 .. 20 ]]
list3 = zip list1 list2

squad a = a * a
isSquad a b c = squad a + squad b == squad c
rightTriangles = [(a, b, c) | a <- [1 .. 10], b <- [1 .. 10], c <- [1 .. 10], (a + b + c ) == 24 && isSquad a b c]
