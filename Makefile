# Makefile

## Project Variables
AUTHOR = Thanatisia
PROJECT_NAME = parallel-remote-exec
REPO_URL = "https://github.com/Thanatisia/parallel-remote-exec"
DEPENDENCIES = parallel

## Source Variables
SRC = ssh-exec
TEST_OPTIONS = --username asura --parallel-opts "-j4" --domain 192.168.1.1 -a "echo Hello World" -a "echo Hello World 2" exec \
			   --username asura --parallel-opts "-j4" --domain 192.168.1.2 -a "echo Hello World" -a "echo Hello World 2" exec

## Recipe/Rules/Targets
.PHONY := help
.DEFAULT_RULE := help

help:
	## Display help menu and options
	@echo -e "help : Display this help menu"
	@echo -e "setup-{apt|pacman} : Setup pre-requisites and dependencies using the specified package manager"
	@echo -e "clone : Clone the source file"
	@echo -e "download : Download/obtain the tar file to work with"
	@echo -e "build : Build/compile the source file into binary"
	@echo -e "clean : Clean up all temporary files generated during compilation"
	@echo -e "install : Install this program to the system"
	@echo -e "uninstall : Uninstall/remove this program from the system"
	@echo -e "test : Test run program with sample data"

setup-apt:
	## Setup pre-requisites and dependencies using APT package manager
	@apt install ${DEPENDENCIES}

setup-pacman:
	## Setup pre-requisites and dependencies using pacman package manager
	@pacman -S ${DEPENDENCIES}

clone:
	## Clone the source file
	@git clone ${REPO_URL}

download:
	## download/obtain the tar file to work with

build:
	## Build/compile the source file into binary

clean:
	## Clean up all temporary files generated during compilation

install:
	## Install source files to system bin folder
	@cp src/${SRC} /usr/bin/${SRC}

uninstall:
	@rm /usr/bin/${SRC}

test:
	## Test run program with sample data
	### @src/${SRC} ${TEST_OPTIONS}
	./test/test_all.sh


