#!/bin/bash

export OPENBLAS_NUM_THREADS=1
export LIBRARY_PATH="${PREFIX}/lib"
export LD_LIBRARY_PATH="${PREFIX}/lib"

$PYTHON setup.py build
$PYTHON setup.py install
