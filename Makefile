.PHONY: deps lint test run

# Instalacja zależności
deps:
		pip install -r requirements.txt; \
		pip install -r test_requirements.txt

# Uruchamianie lintera
lint:
		flake8 hello_world test

# Uruchamianie testów
test:
		py.test

# Uruchamianie aplikacji
run:
		PYTHONPATH=. FLASK_APP=hello_world flask run
