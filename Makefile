# Makefile for setting up pre-commit and running linting/formatting checks

# Default target
.PHONY: all
all: install

# Install pre-commit hooks
.PHONY: install
install:
	pre-commit install

# Auto-format code using pre-commit hooks (e.g., yapf, yamlfix)
.PHONY: format
format:
	pre-commit run --all-files --hook-stage manual

# Check code style and linting without fixing (e.g., flake8, mypy, pylint)
.PHONY: lint
lint:
	flake8 --exclude .venv .
	mypy --ignore-missing-imports --exclude .venv .
	pylint $(shell find . -name "*.py" ! -path "./.venv/*")

# Clean up any pre-commit cache
.PHONY: clean
clean:
	pre-commit clean
