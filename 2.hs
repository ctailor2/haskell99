--Find the last but one element of a list

--Solution

myButLast :: [a] -> a
--base case
myButLast [x, _] = x
--match a list, denoted by (_:xs), left of : is head, right of : is tail
--recur over the tail
myButLast (_:xs) = myButLast xs

--Solution using composition
--Pull in the myLast function defined in ex 1
myLast :: [a] -> a
myLast []     = error "Nothing in list!"
myLast [x]    = x
myLast (_:xs) = myLast xs

myButLastComposed = myLast . init

