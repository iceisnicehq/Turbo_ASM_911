def calculate_equation(A, C):
    """
    Calculate the equation 7*A^2 + 65*C.
    
    Args:
        A (int): The value of A.
        C (int): The value of C.
    
    Returns:
        int: The result of the equation.
    """
    return 7 * A**2 + 65 * C

def write_to_file(A, B, C, result, answer, remainder):
    """
    Write the combination to a file if the result is outside the range [-32768, 32767].
    
    Args:
        A (int): The value of A.
        B (int): The value of B.
        C (int): The value of C.
        result (int): The result of the equation.
    """
    if result < -32768 or result > 32767 or result == 0:
        ...
        # with open("outpy.txt", "a") as f:
        #     sign_A = " " if A >= 0 else "-"
        #     sign_B = " " if B >= 0 else "-"
        #     sign_C = " " if C >= 0 else "-"
        #     f.write(f"A = {sign_A}{abs(A):03}, B = {sign_B}{abs(B):03}, C = {sign_C}{abs(C):03}\n")
    elif  answer < -32768 or answer > 32767:
        with    open("outAnsOF.txt", "a") as f:
            sign_A = " " if A >= 0 else "-"
            sign_B = " " if B >= 0 else "-"
            sign_C = " " if C >= 0 else "-"
            f.write(f"A = {sign_A}{abs(A):03}, B = {sign_B}{abs(B):03}, C = {sign_C}{abs(C):03} | Ans: Q={answer}, R={remainder}\n")
    else:
        with open("outAnsNZ.txt", "a") as f:
            sign_A = " " if A >= 0 else "-"
            sign_B = " " if B >= 0 else "-"
            sign_C = " " if C >= 0 else "-"
            f.write(f"A = {sign_A}{abs(A):03}, B = {sign_B}{abs(B):03}, C = {sign_C}{abs(C):03} | Ans: Q={answer}, R={remainder}\n")

def main():
    for A in range(-128, 128):
        for B in range(-128, 128):
            for C in range(-128, 128):
                result = calculate_equation(A, C)
                numenator = 12*B*C+A+6
                if result == 0:
                    with    open("outAnsOF.txt", "a") as f:
                        sign_A = " " if A >= 0 else "-"
                        sign_B = " " if B >= 0 else "-"
                        sign_C = " " if C >= 0 else "-"
                        f.write(f"A = {sign_A}{abs(A):03}, B = {sign_B}{abs(B):03}, C = {sign_C}{abs(C):03} | ZERO DENOM \n")
                    continue
                answer    = numenator // result
                remainder = numenator % result
                write_to_file(A, B, C, result, answer, remainder)

if __name__ == "__main__":
    main()
    # 7 827 457