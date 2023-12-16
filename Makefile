.ONESHELL:
pre-build:
	pip install --upgrade poetry && \
	poetry install --no-root && \
	yarn

build:
	yarn generate

generate:
	poetry run python gfi/populate.py

generate-prod:
	make pre-build
	make generate
	make build

test:
	poetry run python gfi/test_data.py

format:
	poetry run ruff format .

.DEFAULT_GOAL := build
