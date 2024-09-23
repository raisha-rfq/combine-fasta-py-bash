# Define variables to store sequence information
seq = ""
seqs = ""
total_length = 0
count = 0

# Open the input file
with open("test.txt", "r") as file:
    # Read the file line by line
    for line in file:
        # Check if the line starts with ">"
        if line.startswith(">"):
            # If seq is not empty, process the previous sequence
            if seq:
                total_length += len(seq)
                count += 1
                seqs += seq  # Concatenate the sequence without adding a newline separator
                seq = ""  # Reset seq for the next sequence
            continue  # Move to the next line

        # Concatenate sequence lines
        seq += line.strip()

    # Process the last sequence
    if seq:
        total_length += len(seq)
        count += 1
        seqs += seq

# Print the combined result
if count > 0:
    print(">results for", total_length, "residue sequence made from", count, "records, starting", '"' + seqs[:10] + '"')
    print(seqs)
else:
    print("No sequence records were read")
