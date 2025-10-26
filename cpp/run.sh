#!/bin/bash

# Simple compile-and-run script for C++ programs
# Usage: ./run.sh <source_file>
# Example: ./run.sh problems/hello.cpp

if [ $# -eq 0 ]; then
    echo "Usage: ./run.sh <source_file>"
    echo "Example: ./run.sh problems/hello.cpp"
    exit 1
fi

SOURCE_FILE="$1"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: File '$SOURCE_FILE' not found!"
    exit 1
fi

# Extract filename without path and extension
BASENAME=$(basename "$SOURCE_FILE" .cpp)
OUTPUT_NAME="bin/$BASENAME"

# Create bin directory if it doesn't exist
mkdir -p bin

# Compile with clang++
echo "Compiling $SOURCE_FILE..."
clang++ -std=c++17 -Wall -Wextra -O2 -o "$OUTPUT_NAME" "$SOURCE_FILE"

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "✓ Compilation successful!"
    echo "Running $OUTPUT_NAME..."
    echo ""
    ./$OUTPUT_NAME
else
    echo "✗ Compilation failed!"
    exit 1
fi

