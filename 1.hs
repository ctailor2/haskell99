--Find the last element of a list

--Function takes a collection of elements of a generic type a
--And returns a value of the same type as a
myLast :: [a] -> a
myLast []     = error "Nothing in list!"
--Base case
myLast [x]    = x
--Match against a list and recur on the tail
myLast (_:xs) = myLast xs


-- myLast [1, 2, 3, 4, 5]
-- myLast [2, 3, 4, 5]
-- myLast [3, 4, 5]
-- myLast [4, 5]
-- myLast [5]
-- 5

