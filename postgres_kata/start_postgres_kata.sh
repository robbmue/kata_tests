#!/bin/bash
docker run --name pd_kata \
	--runtime=kata \
	--volume=$HOME/Desktop/praxisprojekt/postgres_kata/postgres_data:/var/lib/postgres/data \
	--publish 5432:5432 \
	--env-file=database.env \
	postgres
