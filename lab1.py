# 62*B*C+13*A+A^2   /   A+5*C^2
def main(reg=0):
    if reg == 0:
        count = 0
        for A in range(-128, 128):
            for B in range(-128, 128):
                for C in range(-128, 128):
                    result = A+5*C**2
                    if result > 32767 or result < -32768:
                        count = count + 1
        print(count)
        print(256**3-count)
    else:
        A = int(input("A: "))
        B = int(input("B: "))
        C = int(input("C: "))
        numerator = 62*B*C+13*A+A^2
        denom = A+5*C**2
        answer = numerator / denom
        print(answer)
        # print(hex(answer))
if __name__ == "__main__":
    main(1)
    #  6 179 328
    # 10 597 888