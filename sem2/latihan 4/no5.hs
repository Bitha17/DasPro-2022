-- IS EQUAL FRONT     - isEqFront(T1, T2)
-- SPESIFIKASI DAN DEFINISI
isEqFront :: [Char] -> [Char] -> Bool
-- isEqFront(T1, T2) menerima masukan 2 buah list of character yang tidak kosong, misalnya T1 dan T2 
-- dan menghasilkan true jika potongan awal list T2 mengandung T1 (dengan panjang dan urutan karakter yang sama). 
-- Banyaknya elemen T2 selalu lebih dari atau sama dengan T1
-- REALISASI
isEqFront t1 t2 =
    if (null t1 == True) then False
    else if (head t1 /= head t2) then False
        else if (null (tail t1) == True) then True
            else isEqFront (tail t1) (tail t2)