# Proof of concept for building compiler+arch specific libraries for Rust

## Order of things: building everything with rustc

* common/download-lib.sh
* manual/build.sh
* usage/test.sh

## Order of things: building library with cargo

* common/download-lib.sh
* cargo/build.sh

## Testing the cargo built library with rustc

* usage/test-cargobuild.sh
