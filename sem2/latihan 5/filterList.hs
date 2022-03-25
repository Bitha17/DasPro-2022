-- FILTER LIST      - filterList(l,f)
-- DEFINISI DAN SPESIFIKASI
filterList :: [Int] -> (Int -> Bool) -> [Int]
{-  filterList(l,f) melakukan “filter” atau penyaringan terhadap elemen list 
    dan menghasilkan list baru dengan elemen yang lolos kriteria filter -}
-- REALISASI
filterList l f =
    if (null l) then [] -- basis
    else    -- rekurens 
        if (f (head l)) then [head l] ++ filterList (tail l) f
        else filterList (tail l) f
-- APLIKASI
-- filterList [(-2),(-1),0,1,2] isPos                                       -- hasil: [1,2]
-- filterList [(-2),(-1),0,1,2] isNeg                                       -- hasil: [-2,-1]
-- filterList [2001,2002,2003,2004,2005,2006,2007,2008] isKabisat           -- hasil: [2004,2008]
-- filterList [(-2),(-1),0,1,2] (\x->(x>0))                                 -- hasil: [1,2]
-- filterList [(-2),(-1),0,1,2] (\x->(x<0))                                 -- hasil: [-2,-1]
-- filterList [2001,2002,2003,2004,2005,2006,2007,2008] (\x->(mod x 4) == 0)-- hasil: [2004,2008]
