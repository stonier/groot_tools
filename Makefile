VERSION=`./setup.py --version`

help:
	@echo "Local Build"
	@echo "  build     : build the python package."
	@echo "Packages"
	@echo "  pypi      : upload the package to PyPI."
	@echo "  source_deb: source packaging (for ppas)"
	@echo "  deb       : build the deb."
	@echo "  upload_deb: upload to yujin's repository."
	@echo "  release   : make pypi (if open), deb and upload together."
	@echo "Other"
	@echo "  build_deps: install various build dependencies."
	@echo "  clean     : clean build/dist directories."

build:
	python3 setup.py build

build_deps:
	echo "Downloading dependencies"
	sudo apt-get install python-stdeb virtualenvwrapper

clean:
	-rm -f MANIFEST
	-rm -rf build dist
	-rm -rf deb_dist
	-rm -rf debian
	-rm -rf ../*.build
	-rm -rf *.tar.gz
	-rm -rf *.egg-info

source_package:
	python3 setup.py sdist

source_deb:
	rm -rf dist deb_dist
	python3 setup.py --command-packages=stdeb.command sdist_dsc

deb:
	rm -rf dist deb_dist
	python3 setup.py --command-packages=stdeb.command bdist_deb

pypi: 
	python3 setup.py sdist upload

upload_deb:
	cd deb_dist; ../scripts/yujin_upload_deb python-yujin-tools

release: pypi deb upload_deb

