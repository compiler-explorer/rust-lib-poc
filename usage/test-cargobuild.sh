#!/bin/sh

RUSTPATH=/opt/compiler-explorer/rust-1.58.0
RUSTC=$RUSTPATH/bin/rustc

PATH=$RUSTPATH/bin

# build the example
cd usage


# assembly
# both the meta file and the rlib work, but the name of the rlib is easier to guess
#$RUSTC -C debuginfo=1 -o output1.s --emit asm -Cllvm-args=--x86-asm-syntax=intel --crate-type rlib --color=always --extern itoa=../itoacargobuild/debug/deps/libitoa-7c0296e69341c5b4.rmeta example.rs 
$RUSTC -C debuginfo=1 -o output2.s --emit asm -Cllvm-args=--x86-asm-syntax=intel --crate-type rlib --color=always --extern itoa=../itoacargobuild/debug/libitoa.rlib example.rs 

# executable
$RUSTC -C debuginfo=1 -o a.out --crate-type bin -Clinker=/opt/compiler-explorer/gcc-11.2.0/bin/gcc --color=always --extern itoa=../itoacargobuild/debug/libitoa.rlib example.rs
