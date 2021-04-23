#!/bin/bash

export OPENBLAS_NUM_THREADS=1
export LIBRARY_PATH="${PREFIX}/lib"
export LD_LIBRARY_PATH="${PREFIX}/lib"
# Add shared
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
    export LDFLAGS="$LDFLAGS -shared"
fi

# we enforce requirements through the conda configuration
echo "exec: $PYTHON setup.py build"
$PYTHON setup.py build
echo "exec: $PYTHON setup.py install"
$PYTHON setup.py install
