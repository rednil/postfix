for name in $(find / -type f -name *.docker.sed)
do
	sed --file $name ${name%.docker.sed}
done
