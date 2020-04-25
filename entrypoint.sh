#!/bin/bash

if [ $# = 1 ] && [ $1 = "site" ]; then
    rm -rf src index.md
    rm -rf site_generator/output
    mkdir -p site_generator/output/src/images
    cd site_generator
    julia --project=.. -e 'using Pkg; Pkg.instantiate()'
    julia --project=.. build.jl
    cp -r output/* ..
    exit 0
fi

exec /opt/conda/bin/jupyter notebook
