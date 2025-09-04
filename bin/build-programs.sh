#!/bin/bash

# Build script for Solana programs

set -e

echo "Building Solana programs..."

# Build the bonsol program
echo "Building bonsol program..."
cargo build-sbf --manifest-path onchain/bonsol/Cargo.toml

# Build the example-program-on-bonsol (callback-example)
echo "Building example-program-on-bonsol (callback-example) program..."
cargo build-sbf --manifest-path onchain/example-program-on-bonsol/Cargo.toml

echo "Build complete! .so files generated in target/deploy/"
