doubleMe x = x + x
squadMe x = doubleMe ( doubleMe x)
idkMe x = doubleMe ( squadMe x)
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x < 10 then doubleMe x else x
progressiveTax profit = if profit < 10 then doubleMe profit else idkMe profit
constantFunction = 112233
constantStringFunction = "Joka"

