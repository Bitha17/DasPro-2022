module ListOfInteger where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

-- ELEMENT KE N             --elmtKeN(l,n)
-- DEFINISI DAN SPESIFIKASI
elmtKeN :: [Int] -> Int -> Int
{-  elmtKeN(l,n) yang menerima masukan sebuah list of integer, misalnya l, 
    dan sebuah integer, misalnya n, dan menghasilkan elemen ke-n dari list of integer l. 
    Diasumsikan 0 < n <= banyaknya elemen l dan list l tidak kosong (minimum terdiri atas 1 elemen)-}
-- REALISASI
elmtKeN l n = 
    if (n == 1) then head l
    else elmtKeN (tail l) (n-1)

-- LIST PLUS            --listPlus(li1,li2)
-- DEFINISI DAN SPESIFIKASI
listPlus :: [Int] -> [Int] -> [Int]
{-  listPlus(li1,li2) yang menerima masukan dua buah list of integer dengan dimensi (banyaknya elemen) sama, 
    misalnya li1 dan li2, dan menghasilkan penjumlahan kedua list, 
    yaitu sebuah list dengan setiap elemen li1 dan li2 pada urutan yang sama dijumlahkan-}
-- REALISASI
listPlus li1 li2 =
    if isEmpty li1 && isEmpty li2 then []
    else konso (head li1 + head li2) (listPlus (tail li1) (tail li2))

nbElmt :: [Int] -> Int
nbElmt l = length l

nbOcc :: [Int] -> Int -> Int
nbOcc l n =
    if isEmpty l then 0
    else 
        if n == head l then nbOcc (tail l) n + 1
        else nbOcc (tail l) n

isMember :: Int -> [Int] -> Bool 
isMember n l =
   if null l then False
   else 
      if head l == n then True
      else isMember n (tail l)

setDiff :: [Int] -> [Int] -> [Int]
setDiff l1 l2 =
    if null l1 then []
    else 
        if not(isMember (head l1) l2) then konso (head l1) (setDiff (tail l1) l2)
        else setDiff (tail l1) l2