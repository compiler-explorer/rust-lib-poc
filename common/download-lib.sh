#!/bin/sh

#curl -s -o libs.json "https://crates.io/api/v1/crates?page=1&per_page=50&sort=downloads"

#curl -s -o itoaversions.json "https://crates.io/api/v1/crates/itoa/versions"

#curl -s -o deps.json "https://crates.io/api/v1/crates/itoa/1.0.1/dependencies"

rm -Rf itoa
git clone --branch 1.0.1 https://github.com/dtolnay/itoa


echo hello
