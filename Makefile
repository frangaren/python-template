DOCS_PATH ?= ./docs/_build

.PHONY: all lint format-check type-check test docs

all: lint format-check type-check test docs

clean: clean-docs

lint:
	poetry run ruff check src tests

format-check:
	poetry run ruff format --check src tests

type-check:
	poetry run mypy src tests

test:
	poetry run pytest \
		--doctest-glob=*.rst

docs:
	poetry run sphinx-apidoc \
		--force \
		--separate \
		--remove-old \
		--doc-project "API Reference" \
		--output-dir ./docs/_api \
		./src/* \
		./src/**/test_*.py \
	&& \
	poetry run sphinx-build \
		--write-all \
		--builder html \
		docs \
		$(DOCS_PATH)

clean-docs:
	rm -rf docs/_api
	rm -rf $(DOCS_PATH)
