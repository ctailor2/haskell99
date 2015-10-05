module ListExercise.Problem9 where
-- Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements, they should be placed in separate sublists

-- This sequence makes sense in my head, but this isn't compiling
{-
pack :: [a] -> [[a]]
pack [] = []
pack (x:xs) = pack_acc xs [[x]]
        where
              pack_acc [] packed_list = packed_list
              pack_acc (y:ys) packed_list
                | y == (last (last packed_list))  = pack_acc ys ((init packed_list) ++ ((last packed_list) ++ y))
                | otherwise                       = pack_acc ys (packed_list ++ [y])
-}

-- Listed solution

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = if x `elem` (head (pack xs))
              then (x:(head (pack xs))):(tail (pack xs))
              else [x]:(pack xs)

