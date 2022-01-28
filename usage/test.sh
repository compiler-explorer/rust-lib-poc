#!/bin/sh

RUSTC=/opt/compiler-explorer/rust-1.58.0/bin/rustc

cd usage

# assembly
#$RUSTC -C debuginfo=1 -o output.s --emit asm -Cllvm-args=--x86-asm-syntax=intel --crate-type rlib --color=always --extern itoa=../itoabuild/libitoa.rmeta example.rs 

# executable
$RUSTC -C debuginfo=1 -o a.out --crate-type bin -Clinker=/opt/compiler-explorer/gcc-11.2.0/bin/gcc --color=always --extern itoa=../itoabuild/libitoa.rlib example.rs
