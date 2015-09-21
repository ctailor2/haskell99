-- Reverse a list

-- Recursive solution
myReverse :: [a] -> [a]
-- Define base cases
myReverse [] = []
myReverse [x] = [x]
-- Use the list constructor
myReverse (x:xs) = myReverse xs ++ [x]

-- Accumulator
myReverse_acc :: [a] -> [a]
--Match one argument by calling the function with 2 arguments
myReverse_acc list =  myReverse_acc list []
--Define pattern matching against the 2 argument function call
                      where
--Base case
                      myReverse_acc [] reversedList = reversedList
--Recur on the tail and cons the head with the accumulator
                      myReverse_acc (x:xs) reversedList = myReverse_acc xs [x] ++ reversedList
