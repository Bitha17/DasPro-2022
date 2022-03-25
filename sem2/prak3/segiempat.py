N = int(input())
C1 = input()
C2 = input()

if N <= 0 or C1 == C2:
    print("Masukan tidak valid")
else:
    for a in range(N):
        if a == 0 or a == (N-1):
            for i in range(N):
                print(C1, end='')
            print()
        else:
            for j in range(N):
                if j == 0:
                    print(C1, end='')
                elif j == (N-1):
                    print(C1)
                else:
                    print(C2, end='')