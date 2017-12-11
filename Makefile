#
# See ./CONTRIBUTING.rst
#

TAG :=""
END :=""

.PHONY: help build up requirements clean lint test help
.DEFAULT_GOAL := help

PROJECT_NAME := slides-aws-overview
PROJECT_NAME_DEV := $(PROJECT_NAME)_dev
PROJECT_NAME_STAGE := $(PROJECT_NAME)_stage
PROJECT_NAME_TEST := $(PROJECT_NAME)_test

PYTHON_VERSION=3.6.1
PYENV_NAME="${PROJECT_NAME}"

# Configuration.
SHELL := /bin/bash
ROOT_DIR=$(shell pwd)
MESSAGE:=༼ つ ◕_◕ ༽つ
MESSAGE_HAPPY:="${MESSAGE} Happy Coding"
SOURCE_DIR=$(ROOT_DIR)/
REQUIREMENTS_DIR=$(ROOT_DIR)/requirements/
FILE_README=$(ROOT_DIR)/README.rst

include *.mk

help:
	@echo '${MESSAGE} Makefile for ${PROJECT_NAME}'
	@echo ''
	@echo 'Usage:'
	@echo '    environment               create environment with pyenv'
	@echo '    install                   install dependences python by env'
	@echo '    clean                     remove files of build'
	@echo '    setup                     install requirements'
	@make docker.help
	@make docs.help
	@make test.help

clean:
	@echo "$(TAG)"Cleaning up"$(END)"
	@rm -rf .tox *.egg dist build .coverage
	@rm -rf docs/build
	@find . -name '__pycache__' -delete -print -o -name '*.pyc' -delete -print -o -name '*.tmp' -delete -print
	@echo

setup: clean
	pip install -r "${REQUIREMENTS_DIR}/setup.txt"
	pre-commit install
	cp -rf extras/git/hooks/prepare-commit-msg .git/hooks/
	cp -rf .env-sample .env

environment: clean
	@if [ -e "$(HOME)/.pyenv" ]; then \
		eval "$(pyenv init -)"; \
		eval "$(pyenv virtualenv-init -)"; \
	fi
	pyenv virtualenv "${PYTHON_VERSION}" "${PYENV_NAME}" >> /dev/null 2>&1 || echo 'Oh Yeah!!'
	pyenv activate "${PYENV_NAME}" >> /dev/null 2>&1 || echo 'Oh Yeah!!'

install: clean
	@echo $(MESSAGE) "Deployment environment: ${env}"
	@if [ "${env}" == "" ]; then \
		pip install -r requirements.txt; \
	else \
		pip install -r "${REQUIREMENTS_DIR}/${env}.txt"; \
	fi
