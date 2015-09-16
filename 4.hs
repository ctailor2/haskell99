-- Find the number of elements of a list

--Recursive solution
myLength :: [a] -> Int
--Base cases
myLength [] = 0
myLength [_] = 1
--Add 1 and recur on the tail
myLength (_:xs) = 1 + myLength xs

--Accumulator
myLength_acc :: [a] -> Int
--Match one argument by calling the function with 2 arguments
myLength_acc list = myLength_acc list 0
--Define pattern matching against the 2 argument function call
            where
                    myLength_acc [] n = n
--Base case
                    myLength_acc (_:xs) n = myLength_acc xs (n + 1)
--Recur on the tail and increment the accumulator by 1
