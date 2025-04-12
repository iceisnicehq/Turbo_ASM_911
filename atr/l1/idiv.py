count = 0
for c in range(-128, 128):
    for b in range(-128, 128):
        for a in range(-128, 128):
            delen = (2*c*c) + (13 * b)
            if delen > 32767 or delen < -32768:
                count += 1
print(count)
