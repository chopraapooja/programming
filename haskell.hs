-- Learn X in Y mins
{- Multiline
Comments -}

-- Lists [Main Operations: append prepend update subvec lookups read]
[1, 2, 3, 4, 5]
[1..5]
['A'..'F']
[0, 2..10]
[5..1]
[5,4..1]
[1..10] !! 3
[1..]
[1..] !! 999
[1..5] ++ [6..10]
0:[1..5]
head [1..5]
[1..5] !! 0
tail [1..5]
init [1..5]
last [1..5]
{-
  append,prepand - Done [++]
  subvec - Done, only [tail, init]
  read - Done [!!]
-}
-----------------------------------------------------------------------
-- List Comprehensions
[ x*2 | x <- [1..5]]
[ x*2 | x <- [1..5], x*2 > 4]
-----------------------------------------------------------------------
-- Tuple
("haskell", 1)
fst ("haskell", 1)
snd ("haskell", 1)
-----------------------------------------------------------------------
-- Functions
let add a b = a + b
add 1 2
1 `add` 2
let (//) a b = a `div` b
let (+) a b =  a - b
let foo a b = (a+1, b+1)
--with list-comprehension
let myMap fn list = [ fn x | x <- list ]
-- with recursion
myMap [] = []
myMap fn (first:rest) = fn first : myMap fn rest
myMap (\x -> x + 1) [1..5]
--partials
let add a b = a + b
let add10 = add 10
add10 2
let add10 = (10 +)
add10 2
let add10 = (+10)
add10 2
let lookup0 = (!!0)
lookup0 [1..5]
let multiplesOf2 = ([0,2..] !!)
multiplesOf2 2






