#!/bin/bash
for file in *.csv; do
    # Use sed to replace '4' with '5' and '5' with '6' in the 11th column
    awk -F, -v OFS=, '{if ($11==4) $11=5; else if ($11==5) $11=6;}1' "$file" > temp && mv temp "$file"
done
