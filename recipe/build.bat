@echo on

set "OMP_NUM_THREADS=1"
set "MKL_NUM_THREADS=1"
set "OPENBLAS_NUM_THREADS=1"
%PYTHON% -m pip install . -vvv --no-deps --no-build-isolation
