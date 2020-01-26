import Text.Show.Functions 

--a)-----------------------------------------
data BinTree a b = Blatt b | Knoten a (BinTree a b) deriving Show

--b)------------------------------------------
example :: BinTree (Int ->Bool) Char
example = Knoten \x ->(x > 4)
             ((Knoten \x ->(x*x == x) ((Blatt 'g') (Knoten \x->(x==0)((Blatt 'u') (Blatt 'l')))))
              (Knoten \x ->(x >=7) ((Blatt 'f' ) (Blatt 'i')) 
             ))

--c)----------------------------------------------
countInnerNodes:: BinTree a b -> Int
countInnerNodes (Blatt b) = 0
countInnerNodes (Knoten n a m) = 1 + countInnerNodes n + countInnerNodes m

--d)-----------------------------------------------
decodeInt:: BinTree (Int -> Bool) b -> Int -> b	 
			 
