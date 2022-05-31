.DEFAULT_GOAL := test
.PHONY = test

test:
	@./tests/testhelper setup
	@MR_ENVFILE=./tests/.testenv ./bin/mr
	@./tests/testhelper teardown
