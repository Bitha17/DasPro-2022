t = int(input())
b = int(input())
k = int(input())

if (t > 100):
    if (b <= 150):
        if (k != 1) and k != 0:
            print("TRUE")
        else:
            print("FALSE")
    else:
        if t <= 200:
            if k == 2 or k == 3:
                print("TRUE")
        else:
            print("FALSE")
else:
    if (b <= 150):
        if (k == 1):
            print("TRUE")
        elif (k == 2) and (b > 30):
            print("TRUE")
        else:
            print("FALSE")
    else:
        if (k == 2):
            print("TRUE")
        else:
            print("FALSE")

