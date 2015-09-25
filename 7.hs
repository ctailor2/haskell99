-- Flatten a nested list structure
-- transform a list, possibly holding lists as elements, into a flat list
-- by replacing each list with its elements

-- Need to define a new data type, because lists in haskell are homogenous

data NestedList a = Elem a | List [NestedList a]
-- left side defines data type
-- right side defines data constructor
-- define new data type, called NestedList that takes a parameter 'a' in its construction
-- the NestedList type can have different values as specified on the right side of =
-- possible values
--    a data type called Elem with takes a parameter of the same type as 'a'
--    a data type called List which takes a NestedList
--    it seems these data types are constructed "on the fly"

-- (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
--                                     NL a    NL a
                                -------- NL a -------
--                       NL a                           NL a
                  -------------- NL a -----------------------
--         NL a
--  ------------------------ NL a ---------------------------

-- using concat map
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

-- without concat map
flatten :: NestedList a -> [a]
flatten (Elem a   )   = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List [])     = []

