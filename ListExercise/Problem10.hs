module ListExercise.Problem10 where
import ListExercise.Problem9
import ListExercise.Problem4
-- Run-length encoding of a list. Use the result of problem 9 to implement
-- the so-called run-length encoding data compression method. Consecutive duplicates
-- of elements are encoded as lists (N E) where N is the number of duplicates of
-- the element E

data ListEncoding a = Encode(Int, a) deriving Show

encodeList':: (Eq a) => [a] -> [ListEncoding a]
encodeList'list = map encode (pack list)
              where
                 encode list = Encode(myLength list, (head list))

encodeList :: (Eq a) => [a] -> [(Int, a)]
encodeList list = map encode (pack list)
              where
                 encode list = (myLength list, (head list))

