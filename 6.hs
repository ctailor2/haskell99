-- Find out whether a list is a palindrome (same backwards and forwards)

-- Function type definitions applies a class constraint on the type of a
-- where a is the type of element in the list
isPalindrome :: Eq a => [a] -> Bool
-- the elements in the list must respond to the == or Eq function
isPalindrome list = list == reverse list

isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' [] = True
isPalindrome' [_] = True
-- init returns the list without its last item
-- last returns the last item of a list
-- $ is an infix operator that applies the result of its 2nd argument to its 1st
-- ($) :: (a -> b) -> a -> b
isPalindrome' list = (head list) == (last list) && (isPalindrome $ init $ tail list)

