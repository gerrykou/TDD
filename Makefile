
clean:
	rm -rf virtualenv

setup: clean
	python3 -m venv virtualenv
	virtualenv/bin/python3 -m pip install -r requirements.txt

functional-test:
	virtualenv/bin/python3 functional_tests.py
