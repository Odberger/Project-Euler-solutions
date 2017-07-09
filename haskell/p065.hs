{- 
 - Solution to Project Euler problem 65
 - Copyright (c) Project Nayuki. All rights reserved.
 - 
 - https://www.nayuki.io/page/project-euler-solutions
 - https://github.com/nayuki/Project-Euler-solutions
 -}


limit = 100
main = putStrLn (show ans)
ans = let
		func i end
			| i >= end = (1, 0)
			| otherwise = let (n, d) = func (i+1) end
			in ((eContFracTerm i) * n + d, n)
		(numer, _) = func 0 limit
	in digitSum numer

eContFracTerm 0 = 2
eContFracTerm i
	| mod i 3 == 2 = (div i 3) * 2 + 2
	| otherwise    = 1

digitSum 0 = 0
digitSum n = (mod n 10) + (digitSum (div n 10))
