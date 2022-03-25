-- FILTER GANJIL     - filterGanjil(li)
-- SPESIFIKASI DAN DEFINISI
filterGanjil :: [Int] -> [Int]
-- filterGanjil(li) melakukan filtering terhadap sebuah list of integer li sehingga 
-- menghasilkan list dengan elemen yang hanya terdiri atas bilangan ganjil yang muncul di li
-- REALISASI
filterGanjil li =
    if (null li == True) then []
    else if (mod (head li) 2 == 1) then [head li] ++ filterGanjil (tail li)
        else filterGanjil (tail li)
-- APLIKASI
-- filterGanjil [1,2,3,4]