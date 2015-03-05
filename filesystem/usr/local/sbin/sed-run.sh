#!/bin/bash

# this must be executed from bash (not /bin/sh), make sure env is handed in (source?)

echo "sed-run: applying changes from files ending with *.docker-runtime.sed"

for name in $(find / -type f -name *.docker-runtime.sed)
do
	echo "sed-run: applying changes from file $name"
	# substitute variables, write result into temporary file
	# from http://stackoverflow.com/questions/415677/how-to-replace-placeholders-in-a-text-file
	eval "echo \"$(< $name)\"" > $name.tmp
	# call sed with the content of the temporary file
	sed --file $name.tmp --in-place ${name%.docker-runtime.sed}
	# remove the temp file
	rm $name $name.tmp
done
