# Tabitha Permalla (16521076)
# Praktikum 18/03/2022

# Deskripsi Program 
# Program digunakan untuk membaca sebuah integer positif N. 
# Nilai N harus divalidasi sampai didapatkan nilai N yang benar, yaitu 0 < N <= 100. 
# Jika masukan N salah, tuliskan pesan “Masukan salah. Ulangi!”. 
# Setelah didapatkan nilai N yang benar, program meminta masukan N buah bilangan integer.
# Selanjutnya, program menerima masukan sebuah integer, misalnya X, dan menghasilkan:
#   Jika X = 0, tuliskan urutan pertama ditemukannya bilangan 0. Jika tidak ada bilangan 0, tuliskan “Tidak ada 0”.
#   Jika X = -1, maka tuliskan urutan pertama ditemukannya bilangan negatif dan tuliskan bilangannya. Jika tidak ada bilangan negatif, tuliskan “Tidak ada negatif”.
#   Jika X = 1, maka tuliskan urutan pertama ditemukannya bilangan positif dan tuliskan bilangannya. Jika tidak ada bilangan positif, tuliskan “Tidak ada positif”.
#   Jika X selain -1..1, tuliskan: “Tidak diproses”

# KAMUS
# N : int
# A : array [0..N] integer

# ALGORITMA
# Minta pengguna memasukkan N
N = 0
while (N <= 0) or (N > 100):
    N = int(input())
    if (N <= 0) or (N > 100):
        print("Masukan salah. Ulangi!")
# Deklarasi array A
A = [0 for i in range(N)]
# Minta pengguna memasukkan N buah bilangan
for i in range(0, N):
    A[i] = int(input())
# Minta pengguna memasukkan X
X = int(input())
# Berikan output sesuai
if (X == 0):
    if not(X in A):
        print("Tidak ada 0")
    else:
        for i in range(N):
            if A[i] == 0:
                print(i+1)
                exit()
elif (X == -1):
    for i in range(N):
        if A[i] < 0:
            print(str(i+1) + ' ' + str(A[i]))
            exit()
    print("Tidak ada negatif")
elif (X == 1):
    for i in range(N):
        if A[i] > 0:
            print(str(i+1) + ' ' + str(A[i]))
            exit()
    print("Tidak ada positif")
else:
    print("Tidak diproses")


        