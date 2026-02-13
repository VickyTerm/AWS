#!/bin/bash

#############################################
# Script: Text Replacer
# Description: Replaces "give" with "learning" from line 5 onwards
#              only in lines that contain the word "welcome"
# Usage: ./text_replacer.sh <input_file>
# Author: Shell Task 4
# Date: 2026-02-03
#############################################

# Color codes for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if filename is provided
if [ $# -eq 0 ]; then
    echo -e "${YELLOW}Usage: $0 <input_file>${NC}"
    echo "Example: $0 sample_input.txt"
    exit 1
fi

INPUT_FILE="$1"

# Check if file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo -e "${YELLOW}Error: File '$INPUT_FILE' not found!${NC}"
    exit 1
fi

echo "=========================================="
echo "Text Replacement Script"
echo "=========================================="
echo -e "${BLUE}Input File:${NC} $INPUT_FILE"
echo -e "${BLUE}Rule:${NC} Replace 'give' with 'learning' from line 5 onwards"
echo -e "${BLUE}Condition:${NC} Only in lines containing 'welcome'"
echo ""
echo "=========================================="
echo "OUTPUT:"
echo "=========================================="

# Process the file using awk
awk '
{
    # For lines 1-4, print as-is
    if (NR < 5) {
        print $0
    }
    # For lines 5 and onwards
    else {
        # Check if line contains "welcome"
        if ($0 ~ /welcome/) {
            # Replace all occurrences of "give" with "learning"
            gsub(/give/, "learning")
        }
        print $0
    }
}
' "$INPUT_FILE"

echo ""
echo "=========================================="
echo -e "${GREEN}Processing Complete!${NC}"
echo "=========================================="
