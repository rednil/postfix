#!/bin/bash

echo "sed-build: applying changes from files ending with *.docker-build.sed"

for name in $(find / -type f -name *.docker.sed)
do
	echo "sed-build: applying changes from file $name"
	sed --file $name --in-place ${name%.docker.sed}
	rm $name
done
