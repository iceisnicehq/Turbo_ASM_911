def find_unique_lines(file1, file2, output_file):
    """
    Find lines that are present in one file but not in the other.
    
    Args:
        file1 (str): The path to the first file.
        file2 (str): The path to the second file.
        output_file (str): The path to the output file.
    
    Returns:
        None
    """
    with open(file1, 'r') as f1, open(file2, 'r') as f2:
        lines1 = set(line.strip() for line in f1)
        lines2 = set(line.strip() for line in f2)
    
    unique_lines = lines1.symmetric_difference(lines2)
    
    with open(output_file, 'w') as f_out:
        for line in unique_lines:
            f_out.write(line + "\n")

def main():
    file1 = 'outpy.txt'
    file2 = 'OUTTEST.TXT'
    output_file = 'unique_lines.txt'
    find_unique_lines(file1, file2, output_file)
    print(f"Lines unique to one file saved to {output_file}")

if __name__ == "__main__":
    main()