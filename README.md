
# Combine FASTA Tool

## Overview

`Combine FASTA Tool` is a simple Python and Bash/`awk` utility designed to merge multiple sequences from a FASTA-like text file into a single combined sequence. Inspired from https://www.bioinformatics.org/sms2/combine_fasta.html. It processes the input file and outputs the total length, number of records, and a combined sequence, which can be useful for bioinformatics data analysis.

This tool can handle files with multiple sequences and concatenate them without introducing any newlines or other unwanted characters. It supports both a Python version for greater flexibility and a Bash/`awk` version for those who prefer shell-based solutions.

---

## Features
- **Combine multiple FASTA sequences**: Reads in sequences from a text file formatted as FASTA and combines them into one continuous sequence.
- **Summary information**: Displays the total length of the combined sequence and the number of individual sequences read.
- **Cross-platform**: Available both as a Python script and a `bash`/`awk` one-liner for maximum flexibility.

---

## Usage

### Python Version

1. Ensure you have Python installed (Version 3.6 or higher).
2. Clone the repository or download the Python script.
3. Place your FASTA-like sequences in a text file and insert the file path in place of `test.txt`.
4. Run the Python script using the following command:

   ```bash
   python CombineFASTA(python).py
   ```

5. The script will read the file, combine the sequences, and output the combined sequence with its total length and number of records.

### Bash/`awk` Version

1. Ensure you have a Unix-like environment with `awk` installed.
2. Place your FASTA-like sequences in a text file and insert the file path in place of `test.txt`.
3. Run the following command in the file `CombineFASTA(bash).txt`

### Example

Given an input file (`test.txt`) with the following content:

```txt
>seq1
ATGC
>seq2
GGTA
>seq3
TACC
```

The output will be:

```bash
>results for 12 residue sequence made from 3 records, starting "ATGCGGTATA"
ATGCGGTATACC
```

---

## Requirements

- **Python**:
  - Python 3.6+
  
- **Bash/`awk`**:
  - A Unix-like environment (Linux, macOS, WSL on Windows) with `awk` installed.

---

## Files

- `CombineFASTA(python).py`: The Python script to combine FASTA sequences.
- `test.txt`: Example input file containing multiple FASTA sequences.
- `CombineFASTA(bash).sh`: An example shell script containing the `awk` command for users who prefer Bash.

---

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/raisha-rfq/combine-fasta-py-bash.git
   cd combine-fasta-py-bash
   ```

2. Ensure the input file (`test.txt`) is in the working directory.

---

