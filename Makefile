setup-venv:
	pip install virtualenv
	python -m venv venv
	source venv/bin/activate

venv-activate:
	source venv/bin/activate

setup-dev: requirements-dev.txt
	pip install -r requirements-dev.txt

setup: requirements.txt
	pip install -r requirements.txt

lint:
	black . --line-length 79
	flake8 --ignore=E203

clean:
	rm -rf __pycache__