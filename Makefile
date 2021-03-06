PYTHON = python

all: venv
	./.venv/Scripts/python -m ./setup.py build

install: venv
	./.venv/Scripts/python -m pip install -r ./requirements.txt

install-dev: venv install
	./.venv/Scripts/python -m pip install -r ./dev-requirements.txt

venv:
	$(PYTHON) -m venv .venv

clean:
	rm -rf ./.venv

.PHONY: all install install-dev venv clean