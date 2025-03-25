#!/bin/sh -x

wat2wasm "${1}" \
    && wasmtime explore -O opt-level=0 -W nan-canonicalization=y "${1%.*}.wasm" \
    && open "${1%.*}.explore.html"
