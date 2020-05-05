# reo-toolkit

A python package for manipulating māori language text

## Make + Docker

This project requires [GNU make](https://www.gnu.org/software/make/) + [Docker](https://www.docker.com/) in order to work. GNU make is used for build automation, while Docker is used to build virtual environments that make the code reproducible in separate computing environments.

First install make and docker, then run `make docker` to build the docker container in your local environment.

## Pytest

This repo makes use of unit tests using the `pytest` library. Run `make test` to run all of the unit tests.

## entr

[Entr](http://eradman.com/entrproject/) is a command line utility which when given a collection of files, will run a given command automatically.

I like to run `find . -type f | entr make test`, which runs the unit tests automatically whenever a file in the repository is changed.

## Jupyter Notebooks

The docker container also contains a working jupyter notebook server. You can use this to create your own notebooks to test the library if you wish. Just run `make jupyter` and open `localhost:8888` in a browser.

## R

The docker container also contains a working R installation, and can be used to knit R markdown documents if you would prefer to use these for post-analysis. Note that `reo_toolkit` is not an R library, so you'll need to do a first pass in Python if you want to use it.
