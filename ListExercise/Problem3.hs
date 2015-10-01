module ListExercise.Problem3 where
--Find the K'th element of a list. The first elemtn in the list is number 1.

--This is function declaration and type declaration
--This is a curried function, where the remaining parameters are 
--passed into the result of calling the function with the first parameter
elementAt :: [a] -> Int -> a
-- The !! operator indexes into an array, zero-indexed
elementAt x n = x !! (n - 1)

