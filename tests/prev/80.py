import struct

def float_to_single_precision(num):
    """
    Convert a floating-point number to its single-precision (32-bit) IEEE 754 representation.
    """
    # Pack the float into 4 bytes using IEEE 754 single-precision format
    packed = struct.pack('>f', num)  # '>f' means big-endian float (4 bytes)
    # Convert to hex representation
    hex_output = ' '.join(f'{b:02X}' for b in packed)
    return hex_output

def float_to_double_precision(num):
    """
    Convert a floating-point number to its double-precision (64-bit) IEEE 754 representation.
    """
    # Pack the float into 8 bytes using IEEE 754 double-precision format
    packed = struct.pack('>d', num)  # '>d' means big-endian double (8 bytes)
    # Convert to hex representation
    hex_output = ' '.join(f'{b:02X}' for b in packed)
    return hex_output

def float_to_80bit_extended_precision(num):
    # Step 1: Sign bit
    sign_bit = 0 if num >= 0 else 1
    num = abs(num)

    # Step 2: Extract the binary exponent and mantissa
    exponent = 0
    if num != 0.0:
        # Find exponent in base 2 (log2)
        while num < 1.0:
            num *= 2
            exponent -= 1
        while num >= 2.0:
            num /= 2
            exponent += 1
        exponent += 16383  # Offset by the bias for 80-bit precision

    # Step 3: Create the integer bit and mantissa
    integer_bit = 1  # Always 1 for normalized numbers
    fraction = int((num - integer_bit) * (1 << 63))  # Scale fraction to 63 bits

    # Step 4: Construct the 80-bit binary representation
    # Combine sign, exponent, integer bit, and mantissa into 80 bits
    # | sign (1 bit) | exponent (15 bits) | integer bit (1 bit) | mantissa (63 bits) |
    sign_and_exponent = (sign_bit << 15) | (exponent & 0x7FFF)
    high_bits = (sign_and_exponent << 16) | (integer_bit << 15) | (fraction >> 48)
    low_bits = fraction & 0xFFFFFFFFFFFF  # Lower 48 bits of mantissa

    # Step 5: Convert to hex output (in big-endian order)
    high_bytes = struct.pack('>Q', high_bits)[2:]  # High 64 bits, but trim to 6 bytes
    low_bytes = struct.pack('>Q', low_bits)[2:]    # Low 48 bits, 6 bytes total

    # Step 6: Combine and format output
    hex_output = ' '.join(f'{b:02X}' for b in high_bytes + low_bytes)
    return hex_output
    
number = float(input("Enter a number: "))

print("Single Precision (32-bit):", float_to_single_precision(number))
print("Double Precision (64-bit):", float_to_double_precision(number))
print("80-bit Extended Precision:", float_to_80bit_extended_precision(number)[6:])  # Remove the '0x' prefix
