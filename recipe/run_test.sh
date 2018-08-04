#!/bin/sh

# Test command:
pytest --pyargs sisl --ignore sisl/physics/tests/test_physics_sparse.py::test_eigsh_orthogonal
