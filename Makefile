.DEFAULT_GOAL := test
.PHONY = test setup teardown

setup:
	@rm -rf ./tests/tmprepo
	@mkdir ./tests/tmprepo
	cd ./tests/tmprepo
	git init
	echo "a" > a.txt
	git add .
	git commit -m "one file"

test: setup
	@MR_ENVFILE=./tests/.testenv ./bin/mr

teardown:
	@rm -rf ./tests/tmprepo
