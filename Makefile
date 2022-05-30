.DEFAULT_GOAL := test
.PHONY = test

test:
	MR_ENVFILE=./tests/.testenv ./bin/mr
