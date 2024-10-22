#!/bin/bash
for file in *.csv; do
    # Add the new column based on the value in column 10
    awk -F, -v OFS=, '{
        if (NR == 1) {
            $16 = "audio_type";  # Add header for column 16
        } else {
            if ($10 == 210) $16 = "rime";
            else if ($10 == 211) $16 = "coda";
            else if ($10 == 212) $16 = "none";
            else if ($10 == 241) $16 = "NA";
            else $16 = "";  # In case any other values show up in column 10
        }
        print $0;
    }' "$file" > temp && mv temp "$file"
done
