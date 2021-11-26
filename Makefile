# Makefile as a command wrapper

ARTIFACTS := $(shell find . -name '*.tgz')
REPO := "https://lukibahr.github.io/unifi-controller-helm-chart"
CR := $(shell which cr)

all: login build tag push

package:
	$(CR) package .

cleanup:
	rm $(ARTIFACTS)

index:
	$(CR) index --charts-repo $(REPO)
