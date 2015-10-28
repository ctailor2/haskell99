module ListExercise.Problem11 where
import ListExercise.Problem9
import ListExercise.Problem4

-- Modify the result of problem 10 in such a way that if an element has no duplicates
-- it is simply copied into the result set

data ListEncoding a = Single a | Multiple(Int, a) deriving Show

encodeModified :: (Eq a) => [a] -> [ListEncoding a]
encodeModified list = map encode (pack list)
                  where
                    encode [x] = Single x
                    encode list = Multiple((myLength list), (head list))
        

