#! /bin/bash

set -e

export PYTHONPATH=".:${PYTHONPATH}"

echo "==> Running flake8..."
flake8 modules tests

echo "==> Running pylint..."
pylint modules tests

echo "==> Running pytest with coverage..."
pytest --cov=modules --cov-report=term-missing tests/
