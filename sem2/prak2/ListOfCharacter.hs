module ListOfCharacter where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Char: [ ] atau [e o List] atau [List o e]
   Definisi type List of Char
   Basis: List of Char kosong adalah list of Char
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Char di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Char di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Char -> [Char] -> [Char]
{- konso e lc menghasilkan sebuah list of character dari e (sebuah character)  
   dan lc (list of integer), dengan cc sebagai elemen pertama: e o lc -> lc' -}
-- REALISASI
konso e lc = [e] ++ lc

konsDot :: [Char] -> Char -> [Char]
{- konsDot(lc,cc) menghasilkan sebuah list of character dari lc (list of 
   character) dan e (sebuah character), dengan e sebagai elemen terakhir: 
   lc o e -> lc' -}
-- REALISASI
konsDot lc e = lc ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Char] -> Char
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Char] -> [Char]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Char] -> Char
-- last l  menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Char] -> [Char]
-- init(l) menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Char] -> Bool
-- isEmpty l true jika list of character l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Char] -> Bool
-- isOneElmt l true jika list of character l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

-- INVERSE              --inverse(lc)
-- DEFINISI DAN SPESIFIKASI
inverse :: [Char] -> [Char]
{- inverse(lc) menerima masukan sebuah list of character, misalnya lc, 
   dan menghasilkan list, misalnya lc’, yang berisi elemen-elemen lc dengan urutan yang dibalik. 
   Jika lc = [e1,e2,...en-1,en] maka lc’ = [en,en-1,...,e2,e1]-}
-- REALISASI
inverse lc =
   if isEmpty lc then []
   else konsDot (inverse (tail lc)) (head lc)

konkat :: [Char] -> [Char] -> [Char]
konkat lc1 lc2 =
   if isEmpty lc1 && isEmpty lc2 then []
   else if isEmpty lc1 && (isEmpty lc2 == False) then lc2
   else if (isEmpty lc1 == False) && isEmpty lc2 then lc1
   else konsDot (konkat lc1 (init lc2)) (last lc2)

isMember :: Char -> [Char] -> Bool 
isMember n l =
   if null l then False
   else 
      if head l == n then True
      else isMember n (tail l)

delElement :: Char -> [Char] -> [Char]
delElement x l =
    if null l then []       -- basis
    else                    -- rekurens
        if (x == head l) then tail l
        else [head l] ++ delElement x (tail l)

makeUnique :: [Char] -> [Char]
makeUnique l =
   if isEmpty l then []
   else
      if isMember (head l) (makeUnique (tail l)) then konso (head l) (delElement (head l) (makeUnique (tail l)))
      else konso (head l) (makeUnique (tail l))