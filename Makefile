test:             ## Run all the tests
test:
	python setup.py test

recreate_pyenv:   ## Create the python environment. Recreates if the env exists already.
recreate_pyenv:
	conda env create --force -f dev_environment.yml

upload_pypi:      ## Build and upload distribution to pypi server
upload_pypi:
	python setup.py bdist_wheel --dist-dir dist && \
	twine upload --skip-existing --repository pypi dist/*