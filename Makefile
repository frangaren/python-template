DOCS_PATH ?= ./docs/_build

.PHONY: all
all: lint format-check type-check test docs

.PHONY: clean
clean: clean-docs

.PHONY: format
format:
	poetry run ruff format src tests

.PHONY: lint-fix
lint-fix:
	poetry run ruff check --fix src tests

.PHONY: lint
lint:
	poetry run ruff check src tests

.PHONY: format-check
format-check:
	poetry run ruff format --check src tests

.PHONY: type-check
type-check:
	poetry run mypy src tests

.PHONY: test
test:
	poetry run pytest \
		--doctest-glob=*.rst

.PHONY: coverage
coverage:
	poetry run pytest \
		--cov=src \
		--doctest-glob=*.rst

.PHONY: docs
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

.PHONY: clean-docs
clean-docs:
	rm -rf docs/_api
	rm -rf $(DOCS_PATH)
