#!/bin/bash

export OPENBLAS_NUM_THREADS=1
export LIBRARY_PATH="${PREFIX}/lib"
export LD_LIBRARY_PATH="${PREFIX}/lib"
# Add shared
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
    export LDFLAGS="$LDFLAGS -shared"
fi

$PYTHON setup.py build
$PYTHON setup.py install
