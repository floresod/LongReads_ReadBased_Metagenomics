#!/bin/bash
set -euo pipefail

# Define input directory and output file
INPUT_DIR="../results/mobileOG_rawreads"
OUTPUT_FILE="../results/CombinedResults/mobileOG_rawread_results.tsv"

# Create output directory if it doesn't exist
mkdir -p "$(dirname "$OUTPUT_FILE")"

# Write the header to the output file
echo -e "Sequence_ID\tHit\tX1\tX2\tX3\tX4\tX5\tX6\tX7\tX8\tX9\tX10\tSample" > "$OUTPUT_FILE"

# Loop through each .tsv file in the input directory
for file in "$INPUT_DIR"/*.tsv; do
    sample=$(basename "$file" .tsv)
    awk -v s="$sample" 'BEGIN {FS=OFS=","} {print $0, s}' "$file" >> "$OUTPUT_FILE"
done

echo "Merging complete. Output saved to $OUTPUT_FILE"

