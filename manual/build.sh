#!/bin/sh

RUSTC=/opt/compiler-explorer/rust-1.58.0/bin/rustc

cd itoa

mkdir -p ../itoabuild

$RUSTC --crate-name itoa --edition=2018 src/lib.rs --error-format=json --json=diagnostic-rendered-ansi --crate-type lib --emit=dep-info,metadata,link -C opt-level=3 -Cembed-bitcode=no --emit asm -C target-cpu=haswell --out-dir ../itoabuild
