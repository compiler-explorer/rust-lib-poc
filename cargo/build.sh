#!/bin/sh

RUSTPATH=/opt/compiler-explorer/rust-1.58.0
CARGO=$RUSTPATH/bin/cargo

PATH=$PATH:$RUSTPATH/bin

cd itoa

mkdir -p ../itoacargobuild

# build the library
$CARGO build --target-dir ../itoacargobuild
