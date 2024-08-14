#!/bin/sh
#
# Echo out build-information
echo "<<< Printing out debug-information for the build-process"
$PYTHON -c 'from sisl._debug_info import * ; print_debug_info()'

# Test command:
echo "<<< Running tests"
pytest --pyargs sisl
