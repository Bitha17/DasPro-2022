# Tabitha Permalla (16521076)

# Program GambarPita
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar pita sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarPita(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar segitiga dengan tinggi sebesar N sesuai spesifikasi soal
# KAMUS LOKAL
# awal, akhir, i, j : int
# ALGORITMA
    awal = (N//2) + 1
    akhir = (N//2)
    for i in range(awal):
        print(" "*i + "*"*(N-2*i))
    for j in range(akhir):
        print(" "*(akhir - (j+1)) + "*"*(2*(j+1)+1))
    

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
    GambarPita(N)
else:
    print("Masukan tidak valid")



