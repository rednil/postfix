sed(){
	for name in $1/*; do
		if [ -d $name ]; then
			echo "Folder $name"
			sed $name
		elif [ -f $name ]; then
			echo "sed --file $name --in-place ${name#/tmp/sed}"
		fi			
		
	done
}

sed /tmp/sed 
