# Tabitha Permalla (16521076)

# Program GambarSegitiga
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar segitiga sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarSegitiga(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar segitiga dengan tinggi sebesar N sesuai spesifikasi soal
# KAMUS LOKAL
# awal, akhir, i, j : int
# ALGORITMA
    awal = (N//2) + 1
    akhir = (N//2)
    for i in range(awal):
        print(" "*((awal - i - 1) * 2) + "*"*((i+1)*2 - 1) )
    for j in range(akhir):
        print(" "*((j+1)*2) + "*"*(N - ((j+1)*2)))
    

def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
# KAMUS LOKAL
# N : int
#ALGORITMA
    if (N > 0) and (N % 2 == 1):
        return True
    else:
        return False

# ALGORITMA PROGRAM UTAMA
N = int(input())
if IsValid(N):
    GambarSegitiga(N)
else:
    print("Masukan tidak valid")



