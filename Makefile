install: 
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello --cov=greeting --cov=smath --cov=web tests
	python -m pytest --noval notebook.ipynb    # tests our jupyter notebook
	# python -m pytest -v tests/test_web.py    # if just want to test web

debugthree:
	# not working the way expected
	python -m pytest -vv --pdb --maxfail=4  # drop to PDB for first 3 failures

format: 
	black *.py

lint:  
	pylint --disable=R,C *.py

all: install lint test format