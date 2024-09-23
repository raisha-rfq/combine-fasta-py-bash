awk '/^>/ {if(seq){total_length+=length(seq);count++;seqs=seqs seq;seq=""}next}{seq=seq $0} END {if(seq){total_length+=length(seq);count++;seqs=seqs seq;} if(count>0){print ">results for " total_length " residue sequence made from " count " records, starting \"" substr(seqs,1,10) "\"";print seqs} else{print "No sequence records were read"}}' test.txt


awk '                                           # Begin awk script
/^>/ {                                          # If the line starts with ">"
    if(seq){                                    # If seq is not empty
        total_length+=length(seq);              # Accumulate the total length
        count++;                                # Increment the count of records
        seqs=seqs seq;                          # Concatenate the sequence without a separator
        seq="";                                 # Reset the sequence for the next record
    }
    next;                                       # Skip to the next line
}
{
    seq=seq $0                                  # Concatenate sequence lines
}
END {                                           # At the end of the file
    if(seq){                                    # If there is a sequence
        total_length+=length(seq);              # Accumulate the length of the last sequence
        count++;                                # Increment the count of records for the last sequence
        seqs=seqs seq;                          # Concatenate the last sequence without a separator
    }
    if(count>0){                                # If there are records
        print ">results for " total_length " residue sequence made from " count " records, starting \"" substr(seqs,1,10) "\"";  # Print combined information
        print seqs;                             # Print all sequences
    } else {                                    # If there are no records
        print "No sequence records were read";  # Print a message
    }
}' test.txt                                     # Input file path

