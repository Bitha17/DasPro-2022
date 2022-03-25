-- APAKAH DATE VALID?                 isDateValid(d,m,y)
-- DEFINISI DAN SPESIFIKASI
isDateValid :: Int -> Int -> Int -> Bool
{- isDateValid(d,m,y) mengembalikan nilai true jika
   d, m, y membentuk date yang valid. Definisi date yang
   valid adalah jika elemen hari (d) bernilai antara 1
   dan 31, tergantung pada bulan dan apakah tahun kabisat
   atau bukan, elemen bulan (m) bernilai antara 1 dan 12,
   dan elemen tahun (y) bernilai antara 0 dan 99.
   Nilai y mewakili tahun 1900 s.d. 1999 -}
-- REALISASI
isDateValid d m y = if ((mod y 4) == 0) then
                        if (m == 2) then
                            if ((d > 0) && (d <= 29)) then True
                            else False
                        else if (((m > 7) && ((mod m 2) == 0)) || ((m <= 7) && ((mod m 2) == 1))) then
                            if ((d > 0) && (d <= 31)) then True
                            else False
                        else
                            if ((d > 0) && (d <= 30)) then True
                            else False
                    else
                        if (m == 2) then
                            if ((d > 0) && (d <= 28)) then True
                            else False
                        else if (((m > 7) && ((mod m 2) == 0)) || ((m <= 7) && ((mod m 2) == 1))) then
                            if ((d > 0) && (d <= 31)) then True
                            else False
                        else
                            if ((d > 0) && (d <= 30)) then True
                            else False
-- APLIKASI
-- isDateValid 22 11 96