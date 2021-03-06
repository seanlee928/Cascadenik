VERSION:=$(shell cat VERSION.txt)
TARBALL=cascadenik-$(VERSION).tar.gz

all: dist/$(TARBALL)

live:
	python setup.py sdist upload
	rm -rf *.egg* *.pyc build

dist/$(TARBALL):
	python setup.py sdist build
	rm -rf *.egg* *.pyc build

clean:
	rm -rf *.egg* *.pyc build dist
