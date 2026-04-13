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
echo "which pythons:"
which python
which python3
echo $PYTHON

echo ls -l .
ls -l .
echo ls -l $SRC_DIR
ls -l $SRC_DIR
echo ">>>>  environment"
env
echo CMAKE_ARGS=${CMAKE_ARGS}
echo "<<<<  environment" 
echo "exec: python -m pip install $SRC_DIR"
#CMAKE_ARGS="-DCMAKE_C_COMPILER=$GCC -DCMAKE_Fortran_COMPILER=$FC"
$PYTHON -m pip install $SRC_DIR -vvv --no-deps --no-build-isolation
