#!/bin/bash

for name in "$@"
do
	if [ -e ./seed_output/${name}.out ]
	then
		rm ./seed_output/${name}.out
	fi

	for seed_index in {0..9} 
	do
##		python ./py_scripts/${name}.py ${seed_index} >> ./seed_output/${name}.out 
		parallel --max-args 1 python ./py_scripts/$name.py
	done 
done
