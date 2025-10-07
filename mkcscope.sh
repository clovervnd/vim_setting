#!/bin/bash
# Generate cscope database for C/C++ projects
# Usage: ./mkcscope.sh [directory]
# If no directory is specified, uses current directory
#
# Works on both Linux and macOS

set -e

# Check if cscope is installed
if ! command -v cscope &> /dev/null; then
    echo "Error: cscope is not installed"
    echo ""
    if [[ "$(uname -s)" == "Darwin" ]]; then
        echo "Install with: brew install cscope"
    elif [[ "$(uname -s)" == "Linux" ]]; then
        echo "Install with: sudo apt-get install cscope  # Debian/Ubuntu"
        echo "         or: sudo dnf install cscope       # Fedora/RHEL"
        echo "         or: sudo pacman -S cscope         # Arch"
    fi
    exit 1
fi

# Determine search directory
if [ $# -eq 0 ]; then
    SEARCH_DIR="."
else
    SEARCH_DIR="$1"
fi

# Validate directory exists
if [ ! -d "$SEARCH_DIR" ]; then
    echo "Error: Directory '$SEARCH_DIR' does not exist"
    exit 1
fi

echo "Generating cscope database for: $SEARCH_DIR"

# Clean up old files
rm -f cscope.files cscope.out cscope.in.out cscope.po.out

# Find all C/C++ source files
# Use -L to follow symbolic links, works on both Linux and macOS
find -L "$SEARCH_DIR" \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.cxx' \
    -o -name '*.h' -o -name '*.hpp' -o -name '*.hxx' \
    -o -name '*.s' -o -name '*.S' \
    -o -name '*.java' \) \
    -type f -print > cscope.files

# Count files found
FILE_COUNT=$(wc -l < cscope.files)
echo "Found $FILE_COUNT source files"

if [ "$FILE_COUNT" -eq 0 ]; then
    echo "Warning: No source files found in $SEARCH_DIR"
    rm -f cscope.files
    exit 0
fi

# Generate cscope database
# -b: build database only (no interactive mode)
# -q: create inverted index for faster lookups
# -i: use cscope.files as input
cscope -b -q -i cscope.files

echo "✓ Cscope database generated successfully!"
echo ""
echo "Usage in Vim:"
echo "  :cs add cscope.out    - Add this database"
echo "  :cs find s <symbol>   - Find symbol"
echo "  :cs find g <symbol>   - Find definition"
echo "  :cs find c <symbol>   - Find functions calling this function"