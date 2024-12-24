import random

def generate_signed_disp():
    """Generate a signed decimal displacement in the range 0 to 2^31."""
    return random.randint(-2**31, 2**31 - 1)

def generate_rm16_32():
    """Generate rm16/32 operand."""
    rm16_modes = [
        "[bx+si]", "[bx+di]", "[bp+si]", "[bp+di]", "[si]", "[di]", "[bp]", "[bx]"
    ]
    rm32_modes = [
        "[eax]", "[ecx]", "[edx]", "[ebx]", "[sib]", "[ebp]", "[esi]", "[edi]"
    ]
    regs16 = ["ax", "cx", "dx", "bx", "sp", "bp", "si", "di"]
    regs32 = ["eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"]

    choice = random.choice(["rm16", "rm32", "reg16", "reg32"])

    if choice == "rm16":
        rm = random.choice(rm16_modes)
        if "bp" in rm or random.random() < 0.5:  # bp often needs displacement
            disp = generate_signed_disp()
            rm = f"{rm}+{disp}"
        return rm

    elif choice == "rm32":
        rm = random.choice(rm32_modes)
        if "sib" in rm:  # Simplified SIB generation
            sib_base = random.choice(["eax", "ecx", "edx", "ebx", "ebp", "esi", "edi"])
            sib_index = random.choice(["eax", "ecx", "edx", "ebx", ""])
            sib_scale = random.choice([1, 2, 4, 8])
            sign = '+' if disp < 0 else ''
            rm = f"[{sib_base}{sign}{sib_index}*{sib_scale}]" if sib_index else f"[{sib_base}]"
        if random.random() < 0.5:
            disp = generate_signed_disp()
            rm = f"{rm}+{disp}"
        return rm

    elif choice == "reg16":
        return random.choice(regs16)

    elif choice == "reg32":
        return random.choice(regs32)

    return ""

def generate_btc_template():
    """Generate the BTC template."""
    ptr = random.choice(["word ptr", "dword ptr"])
    seg = random.choice(["", random.choice(["cs", "ds", "es", "fs", "gs", "ss"]) + ":"])
    rm16_32 = generate_rm16_32()
    imm8 = f"{random.randint(0, 255)}"

    return f"BTC    {ptr} {seg}{rm16_32}, {imm8}"

# Example usage
if __name__ == "__main__":
    for _ in range(10):
        print(generate_btc_template())
