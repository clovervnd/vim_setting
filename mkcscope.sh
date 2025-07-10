#!/bin/sh
# Generate cscope database for C/C++ projects
# Usage: ./mkcscope.sh [directory]
# If no directory is specified, uses current directory

if [ $# -eq 0 ]; then
    SEARCH_DIR="."
else
    SEARCH_DIR="$1"
fi

# Clean up old files
rm -rf cscope.files cscope.out

# Find all C/C++ source files
find "$SEARCH_DIR" \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.hpp' -o -name '*.s' -o -name '*.S' \) -print > cscope.files

# Generate cscope database
cscope -b -q -i cscope.files

echo "Cscope database generated for $SEARCH_DIR"