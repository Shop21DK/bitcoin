#!/bin/bash

# Delete previous build directory
rm -rf build

# Create output directory if it doesn't exist
mkdir -p build

# Build main.tex with latexmk into the build folder
latexmk -pdf -outdir=build -halt-on-error main.tex

# Copy the generated PDF to root as bitcoin.pdf
cp build/main.pdf bitcoin.pdf

echo "Build complete. PDF copied to bitcoin.pdf"