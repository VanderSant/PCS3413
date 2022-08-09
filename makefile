
FILE ?= Aex1
PATH_ROOT=$(shell pwd)
FILE_PATH=$(PATH_ROOT)/src/$(FILE).sql

run:
	export PGPASSWORD=postgres
	psql -h localhost -d postgres -U postgres -p 5432 -a -q -f $(FILE_PATH)