
clean:
	rm -rf virtualenv

setup: clean
	python3 -m venv virtualenv
	virtualenv/bin/python3 -m pip install -r requirements.txt

run-server:
	virtualenv/bin/python3 manage.py runserver &

functional-test:
	virtualenv/bin/python3 functional_tests.py

unit-test:
	virtualenv/bin/python3 manage.py test

kill-server:
	kill $(ps aux | grep '[/]home/gerry/Documents/projects/tdd3/virtualenv/bin/python3 manage.py runserver' | awk '{print $2}')